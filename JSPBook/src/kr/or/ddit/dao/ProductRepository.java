package kr.or.ddit.dao;

import java.util.ArrayList;
import java.util.List;

import kr.or.ddit.vo.ProductVO;

public class ProductRepository {
	//상품 목록 저장할 리스트 작성(전역변수)
	private List<ProductVO> listOfProducts = 
			new ArrayList<ProductVO>();
	
	//싱글톤 객체 : 메모리에 딱 한 번 생성(공유해서 사용하기 좋은)
	private static ProductRepository instance = new ProductRepository();
	public  static ProductRepository getInstance() {return instance;}
	
	//기본 생성자. 3개의 상품 정보를 설정
	//그런 후 ProductVO 객체 타입의 List인 listOfProducts 변수에 저장
	public ProductRepository() {
		//--------- 휴대폰 등록 시작 ------------------
		//P1234	iPhone 6s	800000
		ProductVO phone = new ProductVO("P1234", "iPhone 6s", 800000);
		//상품 설명
		phone.setDescription("4.7-inch, 1334x750 Renina HD display"
				+ "8-megapixel iSight Camera");
		//분류
		phone.setCategory("Smart Phone");
		//제조사
		phone.setManufacturer("Apple");
		//재고 수
		phone.setUnitsInStock(1000);
		//신상품 or 중고품 or 재생품
		phone.setCondition("New");
		//이미지 파일명
		phone.setFilename("P1234.jpg");
		//--------- 휴대폰 등록 끝 ------------------
		//--------- 노트북 등록 시작 ------------------
		//P1235	LG PC 그램	1500000
		//생성자(상품 아이디, 상품 명, 상품 가격 초기화)
		ProductVO notebook = new ProductVO("P1235", "LG PC 그램", 1500000);
		//상품 설명
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation"
				+ "Intel Core processors");
		//분류
		notebook.setCategory("Notebook");
		//제조사
		notebook.setManufacturer("LG");
		//재고 수
		notebook.setUnitsInStock(1000);
		//신상품 or 중고품 or 재생품
		notebook.setCondition("Refurbished");
		//이미지 파일명
		notebook.setFilename("P1235.jpg");
		//--------- 노트북 등록 끝 ------------------
		//--------- 태블릿 등록 시작 ------------------
		//P1236	Galaxy Tab S	900000
		ProductVO tablet = new ProductVO("P1236", "Galaxy Tab S", 900000);
		//상품 설명
		tablet.setDescription("212.8*125.6*6.6m, Super AMOLED display, "
				+ "Octa-Core processor");
		//분류
		tablet.setCategory("Tablet");
		//제조사
		phone.setManufacturer("Samsung");
		//재고 수
		tablet.setUnitsInStock(1000);
		//신상품 or 중고품 or 재생품
		tablet.setCondition("Old");
		//이미지 파일명
		tablet.setFilename("P1236.jpg");
		//--------- 태블릿 등록 끝 ------------------
		//ProductVO 객체 타입의 List인 listOfProducts 변수에 저장(List<ProductVO> listOfProducts)
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	//ProductVO 객체 타입의 변수 listOfProducts 에 저장된 모든 상품 목록을 가져오자
	//상품 목록
	public List<ProductVO> getAllProducts(){
		return listOfProducts;
	}
	
	//상품 상세 보기
	//리턴타입 : ProductVO 타입(1행)
	//요청URI : /product.jsp?id=P1235
	//요청URL : /product.jsp
	//요청파라미터 : id=P1234(request객체에 들어있음)
	//P1234 : 기본키 데이터(PRODUCT_ID-테이블컬럼, productId-ProductVO의 멤버변수)
	//기본키(Primary Key) : Not Null, No Duplicate(유일 / Unique)
	public ProductVO getProductById(String productId) {
		int size = this.listOfProducts.size();	//3행
		
		//1행을 찾았다면 넣어두자
		//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1235';
		ProductVO productVOById = null;
		
		//i = 0, 1, 2
		//List<ProductVO> => 1건 꺼내오면 => ProductVO 타입이 나옴
		for(int i=0;i<size;i++) {
			ProductVO productVO = listOfProducts.get(i);
			
			//P1234 <- productId : 파라미터(선택된 데이터)
			/*
			 SELECT PRODUCT_ID FROM PRODUCT;
			 productVO.getProductId() -> P1234
			 productVO.getProductId() -> P1235
			 productVO.getProductId() -> P1236
			 */
			if(productVO.getProductId().equals(productId)) {
				productVOById = productVO;
				break;
			}
		}
		return productVOById;
	}
}



















