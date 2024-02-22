<?php
class ModelDesignPopup extends Model {
	// fucntion to get all the popups that are active
	public function getPopup() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "popup WHERE `status` = 1");

		return $query->rows;
	}
}