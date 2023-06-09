<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);


int mints = (int)(musicInfo.get("time")) / 60;
int sec = (int)(musicInfo.get("time")) % 60;





%>
<section class="contents">
	<div class="mt-3">
		<h3>곡 정보</h3>
	</div>
	<div class="border border-success">
		<div class="d-flex p-3">
			<%
			if (request.getParameter("id") != null) {
				
				int id = Integer.valueOf(request.getParameter("id"));
				
				for (Map<String, Object> musics : musicList) {
					if ((int)musics.get("id") == id) {
				
				
			%>

			<div class="">
				<img src="<%=musics.get("thumbnail")%>" alt="이미지" width="200">
			</div>
			<div class="ml-2">
				<div class="display-4">
					<%=musics.get("title")%>
				</div>
				<div class="font-weight-bold text-success mb-3">
					<b><%=musics.get("singer")%></b>
				</div>
				
				<div class="d-flex">
					<div class="music-info">
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
					</div>
					<div class="music-info ml-4">
							<div><%=musics.get("album")%></div>
							<div><%=mints%>	: <%=sec%></div>
							<div><%=musics.get("composer")%></div>
							<div><%=musics.get("lyricist")%></div>
					</div>
				</div>
			</div>

			<%
					}
				}
			}
			
			if (request.getParameter("search") != null) {
				String search = request.getParameter("search");
				
				for (Map<String, Object> musics : musicList) {
					if (musics.get("title").equals(search)) {
												
			%>
			<div class="">
				<img src="<%=musics.get("thumbnail")%>" alt="이미지" width="200">
			</div>
			<div class="ml-2">
				<div class="display-4">
					<%=musics.get("title")%>
				</div>
				<div class="font-weight-bold text-success mb-3">
					<b><%=musics.get("singer")%></b>
				</div>
				
				<div class="d-flex">
					<div class="music-info">
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
					</div>
					<div class="music-info ml-4">
							<div><%=musics.get("album")%></div>
							<div><%=mints%>	: <%=sec%></div>
							<div><%=musics.get("composer")%></div>
							<div><%=musics.get("lyricist")%></div>
					</div>
				</div>
			</div>				
			<%		
					}
				}
				
			}			
			%>
		</div>
	</div>
	<div class="mt-5">
		<h3>가사</h3>
	</div>
	<hr>
	<div class="mb-5">가사 정보 없음</div>
</section>