Readme


1��
��������: ./ac.sh
���ڻ��г�һϵ�е����������Ӧ�����޸�

�磺
����maincode��ʽ�汾���./ac.sh maincode -config config_pixi3_5.xml -clean all -sync current_version -build -sign -teleweb yx_test
����perso��ʽ�汾�����./ac.sh perso -config config_pixi3_5.xml -clean all -sync current_version -build -sign -teleweb yx_test


2��
��������:./ac.sh  [maincode | perso]  [-option]

-option�����¼��֣�
-config	    ָ�������ļ����������ĳ����Ŀ�������ļ�����config_pixi3_5.xml
-clean	    �廷�����������������all��out��all�����������̻�����out��ֻ��outĿ¼
-sync	    ͬ�����룬�������������current_version��latest��v2D32��current_version��ͬ����ǰmanifest�Ĵ��룻latest��ͬ����ǰ��Ŀ�����ļ��з�֧�����´��룻v2D32��ͬ��ĳ���汾�Ĵ���
-modify	    �޸Ĵ����־����ͬ������󣬱��봰�ڻ���ͣ����ʱ���ԶԴ�������޸ģ�������룬��./autotools/ac/Ŀ¼�µ�modification_flag_file�ļ�ɾ�����ű��������±���
-build	    �������
-sign	    ǩ��
-teleweb	�ϴ������teleweb�ϣ�������Ĳ�������Ҫ��teleweb��Ӧ��Ŀ��blackĿ¼�½����ļ����������ϴ���������Ǵ���ڸ��ļ�����


���ӣ�
��ǰ����Ϊpixi3-5-v1.0-dint��֧�����´��룬������pixi353g ��1A2E�汾���޸Ĵ�����֤���������£�
./ac.sh maincode -config config_pixi3_5.xml -clean all -sync v1A2E -modify -build -sign -teleweb yx_test
