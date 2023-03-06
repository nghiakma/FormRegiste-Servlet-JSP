<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>

	<main class="container">
		<header class="row">
			<div class="col">
				<div class="alert alert-success">
					<h1>Dang Ky</h1>
				</div>

			</div>
		</header>
		<section class="row">
			<div class="col-7">
				<div class="row">
					<div class="col">
						<form action="RegisterServlet" method="post">
							<div class="form-group">
								<label for="username">Ten Dang Nhap:</label> <input type="text"
									id="username" name="username" class="form-control" />
							</div>

							<div class="form-group">
								<label for="password">Mat Khau:</label> <input type="password"
									id="password" name="password" class="form-control" />
							</div>
							<div class="form-group">
								<label for="genderM">Gioi Tinh:</label>
								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" id="genderM"
										name="gender" value="Nam"/> <label for="genderM">Nam</label>
								</div>
								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" id="genderF"
										name="gender" value="Nu"/> <label for="genderF">Nu</label>
								</div>
							</div>
							<div class="form-group">
								<div class="form-check">
									<input type="checkbox" class="form-check-input" name="married"
										id="married" /> <label for="married">Da co gia dinh
										chua?</label>
								</div>
							</div>
							<div class="form-group">
								<label for="nationality">Quoc Tich:</label> <select
									name="nationality" id="nationality" class="form-control">
									<option value="vi">Viet Name</option>
									<option value="us">My</option>
									<option value="jp">Nhat Ban</option>
								</select>
							</div>
							<div class="form-group">
								<label for="favorites">So Thich:</label>
								<div class="form-check form-check-inline">
									<input type="checkbox" class="form-check-input"
										name="favorites" id="favorites" value="Read" /> <label
										for="favorites">Doc sach</label>
								</div>
								<div class="form-check form-check-inline">
									<input type="checkbox" class="form-check-input"
										name="favorites" id="favorites" value="Music" /> <label
										for="favorites">Am Nhac</label>
								</div>
								<div class="form-check form-check-inline">
									<input type="checkbox" class="form-check-input"
										name="favorites" id="favorites" value="Tourist" /> <label
										for="favorites">Du lich</label>
								</div>
								<div class="form-check form-check-inline">
									<input type="checkbox" class="form-check-input"
										name="favorites" id="favorites" value="others" /> <label
										for="favorites">Khac</label>
								</div>
							</div>
							<div class="form-group">
								<label for="note">Ghi Chu:</label>
								<textarea name="note" id="note" rows="3" class="form-control"></textarea>
							</div>
							<hr />
							<button type="submit" class="btn btn-primary">Dang Ky</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-5">
			<h3>Thong tin da duoc dang ky</h3>
				<ul>
					<li>Ten dang nhap: ${username}</li>
					<li>Mat Khau: ${password }</li>
					<li>Gioi tinh: ${gender }</li>
					<li>Lap gia dinh: ${married }</li>
					<li>Quoc tich: ${nationality }</li>
					<li>So thich: ${favorites }</li>
					<li>Ghi chu: ${note }</li>
				</ul>
			</div>
		</section>

	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>