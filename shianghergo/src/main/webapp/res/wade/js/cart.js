function changeAmount(id,types){
		if($("#"+id).text()==1 && types ==2){
			alert("商品數量不可低於1")
		}else{
			var total2 = $("#total").text();
			$.ajax({
				url:"http://localhost:8080/shianghergo/changeAmount?id="+id+"&type="+types+"&total="+total2,
				type:"get",
				success:function(data){
					list = data.split(",");
					$("#total").text(list[0]);
					$("#"+list[2]).html(list[1]);
					$("#"+id+"a").text(list[3]);
				},
			})
		}
	}
	
	function deletetr(it,id){
		if(confirm("是否刪除商品?")){
			$.ajax({
				url:"http://localhost:8080/shianghergo/delete?id="+id,
				type:"get",
				success:function(data){
					$(it.parentNode.parentNode).remove();
					$("#total").text($("#total").text()-data);
				},
			})
			
		}
		
	}
	
	
	