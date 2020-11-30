<?php

	class Login_model extends CI_Model{
        public function adduser($data)
		{
			 $this->db->insert("tb1_user", $data);
		}
		public function getUserForLogin($credential){			
           return $this->db->get_where('tb1_user', $credential);
	    }
	   public function userdata($id)
		{
			  $sql = "SELECT * FROM  tb1_user WHERE id='$id'";
			  $query=$this->db->query($sql);
			  $result = $query->result();
			  return $result;
		}
		  public function Updateuser($id,$data){
		$this->db->where('id', $id);
		$this->db->update('tb1_user',$data);        
     }

		
	}
?>