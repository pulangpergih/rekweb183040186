<?php

namespace App\Controllers;

use phpDocumentor\Reflection\DocBlock\Tags\Return_;
use App\Models\RotiModel;

class Breads extends BaseController
{
    protected $rotiModel;
    public function __construct()
    {
        $this->rotiModel = new RotiModel();
    }
    public function index()
    {
        $data = [
            'title' => 'Menu',
            'roti' => $this->rotiModel->getRoti()
        ];

        return view('breads/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title' => 'Details Breads',
            'roti' => $this->rotiModel->getRoti($slug)
        ];

        if (empty($data['roti'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('title breads ' . $slug . ' Not Founds.');
        }

        return view('breads/detail', $data);
    }

    // create
    public function create()
    {
        $data = [
            'title' => 'Form Add Product',
            'validation' => \Config\Services::validation()
        ];
        return view('breads/create', $data);
    }

    // save
    public function save()
    {
        // validation save
        if (!$this->validate([
            'nama' => [
                'rules' => 'required|is_unique[roti.nama]',
                'errors' => [
                    'required' => '{field}  Already Filled',
                    'is_unique' => '{field} Already Registered'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [

                    'max_size' => 'Image size is too large',
                    'is_image' => 'What you choose is not an image',
                    'mime_in' => 'What you choose is not an image'
                ]
            ]
        ])) {

            return redirect()->to('/breads/create')->withInput();
        }
        // get image
        $fileSampul = $this->request->getFile('sampul');
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {

            // generate name sampul image random
            $namaSampul = $fileSampul->getRandomName();
            // move file to folder image
            $fileSampul->move('images', $namaSampul);
        }


        $slug = url_title($this->request->getVar('nama'), '-', true);
        $this->rotiModel->save([
            'jenis' => $this->request->getVar('jenis'),
            'slug' => $slug,
            'nama' => $this->request->getVar('nama'),
            'harga' => $this->request->getVar('harga'),
            'stock' => $this->request->getVar('stock'),
            'sampul' => $namaSampul

        ]);

        session()->setFlashdata('Message', 'Data Added Succesfully.');

        return redirect()->to('/breads');
    }

    // delete
    public function delete($id)
    {
        // search for image by id
        $roti = $this->rotiModel->find($id);
        // check if the image default.jpg
        if ($roti['sampul'] != 'default.jpg') {
            // delete image
            unlink('images/' . $roti['sampul']);
        }

        $this->rotiModel->delete($id);
        session()->setFlashdata('Message', 'Data deleted Succesfully.');
        return redirect()->to('/breads');
    }

    // edit
    public function edit($slug)
    {
        $data = [
            'title' => 'Form Add Product',
            'validation' => \Config\Services::validation(),
            'roti' => $this->rotiModel->getRoti($slug)
        ];
        return view('breads/edit', $data);
    }

    // update
    public function update($id)
    {
        // cek nama
        $rotiLama = $this->rotiModel->getRoti($this->request->getVar('slug'));
        if ($rotiLama['nama'] == $this->request->getVar('nama')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[roti.nama]';
        }

        if (!$this->validate([
            'nama' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} Bread Already Filled',
                    'is_unique' => '{field} Bread Already Registered'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [

                    'max_size' => 'Image size is too large',
                    'is_image' => 'What you choose is not an image',
                    'mime_in' => 'What you choose is not an image'
                ]
            ]
        ])) {
            return redirect()->to('/breads/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileSampul = $this->request->getFile('sampul');
        // check images
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            // generate name file random
            $namaSampul = $fileSampul->getRandomName();
            // move image
            $fileSampul->move('images', $namaSampul);
            // delete file old
            unlink('images/' . $this->request->getVar('sampulLama'));
        }

        $slug = url_title($this->request->getVar('nama'), '-', true);
        $this->rotiModel->save([
            'id' => $id,
            'jenis' => $this->request->getVar('jenis'),
            'slug' => $slug,
            'nama' => $this->request->getVar('nama'),
            'harga' => $this->request->getVar('harga'),
            'stock' => $this->request->getVar('stock'),
            'sampul' => $namaSampul

        ]);

        session()->setFlashdata('Message', 'Data has been Succesfully changed.');

        return redirect()->to('/breads');
    }
}
