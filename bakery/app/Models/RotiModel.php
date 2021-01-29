<?php

namespace App\Models;

use CodeIgniter\Model;

class RotiModel extends Model
{
    protected $table = 'roti';
    protected $useTimestamps = true;
    protected $allowedFields = ['jenis', 'slug', 'nama', 'harga', 'stock', 'sampul'];

    public function getRoti($slug = false)
    {
        if ($slug == false) {
            return $this->findAll();
        }

        return $this->where(['slug' => $slug])->first();
    }
}
