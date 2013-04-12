<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcephoto_all extends SectionDatasource{

		public $dsParamROOTELEMENT = 'photo-all';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '32';
		public $dsParamSTARTPAGE = '{$title}';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		

		public $dsParamFILTERS = array(
				'80' => 'no',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'date',
				'image: image',
				'image: caption',
				'category: title',
				'category: description',
				'featured'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Photo: All',
				'author' => array(
					'name' => 'Jonathan Simcoe',
					'website' => 'http://karlinoelle',
					'email' => 'jdsimcoe@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-03-30T07:52:10+00:00'
			);
		}

		public function getSource(){
			return '15';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
