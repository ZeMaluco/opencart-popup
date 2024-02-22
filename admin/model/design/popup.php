<?php
class ModelDesignPopup extends Model {
	public function addPopup($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "popup SET value = '" . $this->db->escape($data['value']) . "', name = '" . $this->db->escape($data['name']) . "', backgroundcolor = '" . $this->db->escape($data['backgroundcolor']) . "', status = '" . (int)$data['status'] . "'");

		$popup_id = $this->db->getLastId();

		return $popup_id;
	}

	public function editPopup($popup_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "popup SET value = '" . $this->db->escape($data['value']) . "', name = '" . $this->db->escape($data['name']) . "', backgroundcolor = '" . $this->db->escape($data['backgroundcolor']) . "', status = '" . (int)$data['status'] . "' WHERE popup_id = '" . (int)$popup_id . "'");


	}

	public function deletePopup($popup_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "popup WHERE popup_id = '" . (int)$popup_id . "'");
	}

	public function getPopup($popup_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "popup WHERE popup_id = '" . (int)$popup_id . "'");

		return $query->row;
	}

	public function getPopups($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "popup";

		$sort_data = array(
			'value',
			'name',
			'backgroundcolor',
			'status'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY status";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalPopups() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "popup");

		return $query->row['total'];
	}
}
