<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/header.jsp"></jsp:include>


<!-------------- body 시작 ------------>
<div class="card card-warning">
  <div class="card-header">
    <h3 class="card-title">도서 입력</h3>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <form>
      <div class="row">
        <div class="col-sm-6">
          <!-- text input -->
          <div class="form-group">
            <label>도서명</label>
            <input type="text" class="form-control" placeholder="도서명을 입력해주세요"
            	name="bookName" id="bookName" />
          </div>
        </div>
        <div class="col-sm-6">
          <div class="form-group">
            <label>회원명</label>
            <!-- disabled : 요소를 비활성화 => submit 시 데이터에서 제외됨
            	 readonly : 읽기 전용 => submit 시 함께 전송 됨
             -->
            <input type="text" class="form-control" placeholder="개요를 입력해주세요" 
            	name="memName" id="memName" value="개똥이" disabled />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6">
          <!-- textarea -->
          <div class="form-group">
            <label>도서 개요</label>
            <!-- rows : 3행 -->
            <textarea class="form-control" rows="3" placeholder="개요를 입력해주세요"
            	name="bookComment" id="bookComment"></textarea>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="form-group">
            <label>회원정보</label>
            <textarea class="form-control" rows="3" placeholder="개발자입니다."
            	name="memInfo" id="memInfo" readonly>개발자입니다.</textarea>
          </div>
        </div>
      </div>

      <!-- input states -->
      <div class="form-group">
        <label class="col-form-label" for="inputSuccess"><i class="fas fa-check"></i> 
        	도서 분류</label>
        <input type="text" class="form-control is-valid" 
        	name="bookCategory" id="bookCategory" placeholder="분류를 입력해주세요" />
      </div>
      <div class="form-group">
        <label class="col-form-label" for="inputWarning"><i class="far fa-bell"></i> 
        	저자</label>
        <input type="text" class="form-control is-warning" 
        	name="writer" id="writer" placeholder="저자를 작성해주세요" />
      </div>
      <div class="form-group">
        <label class="col-form-label" for="inputError"><i class="far fa-times-circle"></i> 
        	판매가</label>
        <!-- number : 숫자만 입력 가능 -->
        <input type="number" class="form-control is-invalid" 
        	name="sale" id="sale" placeholder="판매가를 입력해주세요" /> 
      </div> 

      <div class="row">
        <div class="col-sm-6">
          <!-- checkbox -->
          <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="checkbox">
              <label class="form-check-label">Checkbox</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="checkbox" checked="">
              <label class="form-check-label">Checkbox checked</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="checkbox" disabled="">
              <label class="form-check-label">Checkbox disabled</label>
            </div>
          </div>
        </div>
        <div class="col-sm-6">
          <!-- radio -->
          <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="radio1">
              <label class="form-check-label">Radio</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="radio1" checked="">
              <label class="form-check-label">Radio checked</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" disabled="">
              <label class="form-check-label">Radio disabled</label>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-6">
          <!-- select -->
          <div class="form-group">
            <label>Select</label>
            <select class="form-control">
              <option>option 1</option>
              <option>option 2</option>
              <option>option 3</option>
              <option>option 4</option>
              <option>option 5</option>
            </select>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="form-group">
            <label>Select Disabled</label>
            <select class="form-control" disabled="">
              <option>option 1</option>
              <option>option 2</option>
              <option>option 3</option>
              <option>option 4</option>
              <option>option 5</option>
            </select>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-6">
          <!-- Select multiple-->
          <div class="form-group">
            <label>Select Multiple</label>
            <select multiple="" class="form-control">
              <option>option 1</option>
              <option>option 2</option>
              <option>option 3</option>
              <option>option 4</option>
              <option>option 5</option>
            </select>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="form-group">
            <label>Select Multiple Disabled</label>
            <select multiple="" class="form-control" disabled="">
              <option>option 1</option>
              <option>option 2</option>
              <option>option 3</option>
              <option>option 4</option>
              <option>option 5</option>
            </select>
          </div>
        </div>
      </div>
    </form>
  </div>
  <!-- /.card-body -->
</div>
<!-------------- body 끝 ------------>
   

<jsp:include page="/bottom.jsp"></jsp:include>