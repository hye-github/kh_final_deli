<%--
  Created by IntelliJ IDEA.
  User: 이나경
  Date: 2022-12-26
  Time: 오전 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--jQuery-->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous">
</script>

<div class="header">
    <div id="storeName">${storeInfoDTO.store_name}
        <button class="heart">
            <input class="store_seq" type="hidden" value="${storeInfoDTO.store_seq}">
            <%--찜 store_Seq--%>
            <c:choose>
                <c:when test="${result==1}">
                    <label class="heartIcon" style="text-shadow: 0 0 0 rgba(232,76,79);">
                        <i class="fa-solid fa-heart fa-lg"></i>
                    </label>
                </c:when>
                <c:otherwise>
                    <label class="heartIcon" style="text-shadow: 0 0 0 rgba(217, 216, 214, 0.99);">
                        <i class=" fa-solid fa-heart fa-lg"></i>
                    </label>
                </c:otherwise>
            </c:choose>
        </button>
    </div>
    <div id="star"><span class="storeEtc"> <i class="fa-solid fa-star"></i> ${reviews.rev_star}</span>
        (${storeReviewAvg}) | 리뷰(${storeReviewCount})
    </div>
    <%--    <div id="reviewCount"> | 리뷰(${storeReviewCount})</div>--%>
    <div id="storeInfo">${storeInfoDTO.store_intro}</div>
    <div class="deliveryInfo" style="text-align: left;">
        <div>최소주문금액 : <fmt:formatNumber value="${storeInfoDTO.store_min_price}" pattern="#,###"/>원</div>
        <div>배달예상시간 : ${storeInfoDTO.store_deli_time}분</div>
        <div>배달팁 : <fmt:formatNumber value="${storeInfoDTO.store_deli_tip}" pattern="#,###"/>원</div>
    </div>
    <div class="fieldBox">
        <div id="menu"><a href="/store/menu/${storeInfoDTO.store_seq}">메뉴</a></div>
        <div id="info"><a href="/store/info/${storeInfoDTO.store_seq}" id="to_info">정보</a></div>
        <div id="review"><a href="/store/review/${storeInfoDTO.store_seq}">리뷰</a></div>
    </div>

</div>
