<?php
			// Design
			$design = array();
			// this can be placed anywhere just change according 
			if ($this->user->hasPermission('access', 'design/popup')) {
				$design[] = array(
					'name'	   => "Popups",
					'href'     => $this->url->link('design/popup', 'user_token=' . $this->session->data['user_token'], true),
					'children' => array()
				);	
			}