-- insert data --
ALTER SESSION SET NLS_DATE_LANGUAGE='AMERICAN'; -- 调整日期格式

INSERT INTO STATION (staid, staname, staest) VALUES ('s01', '中央电视台', '01-MAY-1958');
INSERT INTO STATION (staid, staname, staest) VALUES ('s02', '北京电视台', '16-MAY-1979');
INSERT INTO STATION (staid, staname, staest) VALUES ('s03', '湖南卫视', '01-JAN-1997');

INSERT INTO WORKER (wid, wname, wpassword, staid, wtime)
VALUES ('w0001', '赵主管', 'zzg', 's01', '01-JAN-2016');
INSERT INTO WORKER (wid, wname, wpassword, staid, wtime)
VALUES ('w0002', '钱主管', 'qzg', 's02', '02-JAN-2016');
INSERT INTO WORKER (wid, wname, wpassword, staid, wtime)
VALUES ('w0003', '孙主管', 'szg', 's03', '03-JAN-2016');
INSERT INTO WORKER (wid, wname, wpassword, staid, wtime)
VALUES ('w0004', '李主管', 'lzg', 's03', '04-JAN-2016');

INSERT INTO USERS (usid, uname, upassword) VALUES ('u0001', '学生赵', 'xsz');
INSERT INTO USERS (usid, uname, upassword) VALUES ('u0002', '学生钱', 'xsq');
INSERT INTO USERS (usid, uname, upassword) VALUES ('u0003', '学生孙', 'xss');

INSERT INTO PROGRAM (pid, pname, pepisode, pseason, pcontent, padv)
VALUES ('p01', '新闻联播', '-1', '-1', '每日新闻播报', 'N/A');
INSERT INTO PROGRAM (pid, pname, pepisode, pseason, pcontent, padv)
VALUES ('p02', '新闻30分', '-1', '-1', '每日中午新闻播报', 'N/A');
INSERT INTO PROGRAM (pid, pname, pepisode, pseason, pcontent, padv)
VALUES ('p03', '体坛快讯', '-1', '-1', '每周体育新闻播报', 'N/A');
INSERT INTO PROGRAM (pid, pname, pepisode, pseason, pcontent, padv)
VALUES ('p04', '亮剑', '1', '30', '在李云龙独特的战术指挥下，骄横的日军山崎大队全军覆灭。接着李云龙会同国军358团团长楚云飞闯进日军重兵防守的县城，守备部队的全体军官都在这次袭击中丧生。李云龙和楚云飞在晋西北因此名声大噪，李楚二人惺惺相惜，成了朋友。1941年冬天，弹尽粮绝的独立团在野狼峪伏击日军用冷兵器全歼日军两个中队，此战之惨烈竟惊动了最高统帅部的蒋委员长…', 'N/A');
INSERT INTO PROGRAM (pid, pname, pepisode, pseason, pcontent, padv)
VALUES ('p05', '快乐大本营', '-1', '-1', '《快乐大本营》是湖南电视台于1997年7月11日开办的一档综艺性娱乐节目，目前固定每周六晚黄金时段在湖南卫视播出，是湖南卫视上星以来一直保持的优秀品牌节目。栏目开办以来以新鲜的题材，多样的形式，清新的风格，新奇的内容广受好评，注重知识性、趣味性和参与性，引领观众走向一个崭新的视听空间。', 'N/A');
INSERT INTO PROGRAM (pid, pname, pepisode, pseason, pcontent, padv)
VALUES ('p06', '天天向上', '-1', '-1', '《天天向上》是一档非常国际化的高品位高水准的娱乐节目，以游戏、即兴短剧为主，把标准的世界礼仪通过幽默的形式轻松传递给每一位观众。节目的主题固定为世界礼仪知识。从“世界礼仪”四个字不难看出节目本身包含了公益性、教育性、知识性，再加上脱口秀固有的娱乐性，四性必定为节目赢来更多的关注。', 'N/A');
INSERT INTO PROGRAM (pid, pname, pepisode, pseason, pcontent, padv)
VALUES ('p07', '乡村爱情', '7', '30', '《乡村爱情》是中国大陆的农村题材电视剧，2006年播出第一部，至2017年已播出9部。', 'N/A');

INSERT INTO CHANNEL (chid, chname, chhit, staid, chtime)
VALUES ('ch01', 'CCTV1-综合', '25173522', 's01', '01-MAY-1958');
INSERT INTO CHANNEL (chid, chname, chhit, staid, chtime)
VALUES ('ch02', 'CCTV5-体育', '5256847', 's01', '01-JAN-1995');
INSERT INTO CHANNEL (chid, chname, chhit, staid, chtime)
VALUES ('ch03', 'HNTV', '16815497', 's03', '01-JAN-1997');
INSERT INTO CHANNEL (chid, chname, chhit, staid, chtime)
VALUES ('ch04', 'BJTV', '735294', 's02', '16-MAY-1979');

INSERT INTO BROADCAST (chid, pid, bdtime) VALUES ('ch01', 'p01', TO_DSINTERVAL('0 19:00:00'));
INSERT INTO BROADCAST (chid, pid, bdtime) VALUES ('ch01', 'p02', TO_DSINTERVAL('0 12:30:00'));
INSERT INTO BROADCAST (chid, pid, bdtime) VALUES ('ch02', 'p03', TO_DSINTERVAL('0 12:00:00'));
INSERT INTO BROADCAST (chid, pid, bdtime) VALUES ('ch01', 'p04', TO_DSINTERVAL('0 20:00:00'));
INSERT INTO BROADCAST (chid, pid, bdtime) VALUES ('ch03', 'p05', TO_DSINTERVAL('0 19:30:00'));
INSERT INTO BROADCAST (chid, pid, bdtime) VALUES ('ch03', 'p06', TO_DSINTERVAL('0 19:30:00'));
INSERT INTO BROADCAST (chid, pid, bdtime) VALUES ('ch04', 'p07', TO_DSINTERVAL('0 20:30:00'));
INSERT INTO BROADCAST (chid, pid, bdtime) VALUES ('ch01', 'p07', TO_DSINTERVAL('0 22:30:00'));

INSERT INTO CHANNELCOLLECT (chid, usid) VALUES ('ch01', 'u0001');
INSERT INTO CHANNELCOLLECT (chid, usid) VALUES ('ch02', 'u0001');
INSERT INTO CHANNELCOLLECT (chid, usid) VALUES ('ch03', 'u0001');
INSERT INTO CHANNELCOLLECT (chid, usid) VALUES ('ch04', 'u0002');
INSERT INTO CHANNELCOLLECT (chid, usid) VALUES ('ch02', 'u0002');
INSERT INTO CHANNELCOLLECT (chid, usid) VALUES ('ch03', 'u0002');
INSERT INTO CHANNELCOLLECT (chid, usid) VALUES ('ch04', 'u0003');
INSERT INTO CHANNELCOLLECT (chid, usid) VALUES ('ch03', 'u0003');

INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0001', 'p01', '监督');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0001', 'p02', '监督');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0002', 'p01', '脚本');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0002', 'p02', '脚本');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0003', 'p04', '音效监督');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0003', 'p05', '音效监督');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0003', 'p06', '音效监督');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0003', 'p07', '音效监督');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0004', 'p01', '后期');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0004', 'p02', '后期');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0004', 'p03', '后期');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0004', 'p04', '后期');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0004', 'p05', '后期');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0004', 'p06', '后期');
INSERT INTO PRODUCING (wid, pid, job) VALUES ('w0004', 'p07', '后期');

INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0001', 'p01', 'y');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0001', 'p02', 'n');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0001', 'p03', 'n');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0002', 'p04', 'y');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0002', 'p05', 'y');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0002', 'p06', 'y');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0002', 'p07', 'y');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0003', 'p01', 'n');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0003', 'p03', 'y');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0003', 'p05', 'n');
INSERT INTO PROGRAMCOLLECT (usid, pid, reminder) VALUES ('u0003', 'p07', 'y');

INSERT INTO SCHEDULER (sid, sname, spassword, staid, stime)
VALUES ('s0001', '赵调度', 'zdd', 's01', '01-JAN-2016');
INSERT INTO SCHEDULER (sid, sname, spassword, staid, stime)
VALUES ('s0002', '钱调度', 'qdd', 's01', '02-JAN-2016');
INSERT INTO SCHEDULER (sid, sname, spassword, staid, stime)
VALUES ('s0003', '孙调度', 'sdd', 's02', '03-JAN-2016');
INSERT INTO SCHEDULER (sid, sname, spassword, staid, stime)
VALUES ('s0004', '王调度', 'wdd', 's03', '04-JAN-2016');

commit;
