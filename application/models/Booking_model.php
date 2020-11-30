<?php

	class Booking_model extends CI_Model{
       public function gethoteldata()
       {
            $sql ="SELECT * FROM tb1_hotels";
			$query=$this->db->query($sql);
            $result = $query->result(); 
	        return $result;
       }
	
		public function hoteldata($id)
		{
			  $sql = "SELECT * FROM  tb1_hotels WHERE hotel_id='$id'";
			  $query=$this->db->query($sql);
			  $result = $query->result();
			  return $result;
		}
		public function gethoteldataratewiseASC()
		{
			   $sql ="SELECT * FROM tb1_hotels order by stars ASC";
			$query=$this->db->query($sql);
            $result = $query->result(); 
	        return $result;
		}
		public function gethoteldataratewiseDESC()
		{
			  $sql ="SELECT * FROM tb1_hotels order by stars DESC";
			$query=$this->db->query($sql);
            $result = $query->result(); 
	        return $result;
		}
		public function gethoteldatapricewiseASC()
		{
			   $sql ="SELECT * FROM tb1_hotels order by price ASC";
			$query=$this->db->query($sql);
            $result = $query->result(); 
	        return $result;
		}
		public function gethoteldatapricewiseDESC()
		{
			  $sql ="SELECT * FROM tb1_hotels order by price DESC";
			$query=$this->db->query($sql);
            $result = $query->result(); 
	        return $result;
		}
	}
?>