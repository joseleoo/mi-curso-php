<?php
namespace App\Models;

require_once 'Printable.php';

class BaseElement implements Printable {
    protected $title;
    public $description;
    public $logo;
    public $visible = true;
    public $months;

    public function __construct($title, $description,$logo) {
        $this->setTitle($title);
        $this->description = $description;
        $this->logo = $logo;
    }

    public function setTitle($t) {
        if($t == '') {
            $this->title = 'N/A';
        } else {
            $this->title = $t;
        }
    }

    public function getTitle() {
        return $this->title;
    }

    public function getDurationAsString() {
        $years = floor($this->months / 12);
        $extraMonths = $this->months % 12;
      
        return "$years years $extraMonths months";
    }

    public function getDescription() {
        return $this->description;
    }

    public function getlogo() {
        return $this->logo;
    }
}