<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    
    <title>지훈이네 현금 출납기</title>
    
    <!-- Favicon - 파비콘 (주소창 영역 아이콘) -->
    <link rel="Shortcut Icon" href="./resources/images/common/favicon_cnttech.ico"/>
    
    <!-- Css -->
    <link rel="stylesheet" href="./resources/css/common.css" media="all" />
	<link rel="stylesheet" href="./resources/css/style.css" media="all" />
	
	<!-- Javascript -->
    <script>
    function add_row() {
        var my_tbody = document.getElementById('tbody');
        // var row = my_tbody.insertRow(0); // 상단에 추가
        var row = my_tbody.insertRow(my_tbody.rows.length ); // 하단에 추가
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        cell1.innerHTML = '<input type="text" placeholder="동전금액을 입력해주세요." title="동전금액">';
        cell2.innerHTML = '<input type="text" placeholder="개수를 입력해주세요." title="개수">';
    }

    function delete_row() {
        var my_tbody = document.getElementById('tbody');
        if (my_tbody.rows.length < 1) return;
        // my_tbody.deleteRow(0); // 상단부터 삭제
        my_tbody.deleteRow( my_tbody.rows.length-1 ); // 하단부터 삭제
    }
    </script>
</head>

<body>
    <!-- Wrap -->
    <div id="wrap">
        <!-- Header -->
        <header>
			<div class="inner">
				<h2>지훈이네 현금 출납기</h2>
			</div>
			<!-- //inner -->
		</header>
        <!-- //Header -->
        
        <!-- container -->
        <div id="container">
            <!-- contents -->
            <section id="contents">
      			<!-- contents -->
      			<div>
					<h3 class="table_title">현금 출납기</h3>
					<div class="box_panel">
						<div class="box money">
							<span class="mb15">지폐금액</span> 
							<input type="text" name="money" placeholder="금액을 입력해주세요." title="지폐금액">
						</div>
						<div class="box coin">
							<span class="mb15">동전의 가지 수</span>
							<div class="btn_coin t_center">
								<button onclick="add_row()" class="btn">+</button>
								<button onclick="delete_row()" class="btn">-</button>
							</div>
						</div>
						<div>
							<div class="tb-responsive">
								<table class="tb_basic">
									<colgroup>
										<col width="50%" />
										<col width="50%" />
									</colgroup>
									<thead>
										<tr>
											<th>동전금액</th>
											<th>개수</th>
										</tr>
									</thead>
									<tbody id="tbody">
										<!-- <tr>
                                            <td><input type="text" name="coin_money" placeholder="동전금액을 입력해주세요." title="동전금액"></td>
                                            <td><input type="text" name="cnt" placeholder="개수를 입력해주세요." title="개수"></td>
                                        </tr> -->
									</tbody>
								</table>
							</div>
						</div>
						<div class="box coin mt15">
							<span class="mb15">결과</span>
							<div class="box_result">
								<textarea class="noresize" placeholder="내용" title="내용" readonly="readonly" disabled>
									fdsfdsfdfsdfsfsdfsfsfsfsfsdfdsfdsfdsfsfs
								</textarea>
							</div>
						</div>
						<!-- btn_action -->
						<div class="btn_action t_center">
							<input type="submit" value="계산" class="btn btn_calculation" />
						</div>
						<!-- //btn_action -->
					</div>
				</div>
      			<!-- //contents -->
       		</section>
        </div>
        <!-- //container -->
        
        <!-- Footer -->
        <footer id="footer">
			<div class="t_center"><span>COPYRIGHT © JINYANG All RIGHTS RESERVED.</span></div>
		</footer>
        <!-- //Footer -->
    </div>
    <!-- //Wrap -->
</body>
</html>