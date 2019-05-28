echo hello
cd /home/shikhar/Downloads/test/
i=5;
while [ $i -gt 0 ] ;
do
	touch $(date "+%Y%m%d").$i.xml
	let i--;
done

tar -cvzf test.tar.gz *.xml
zcat test.tar.gz | tar -tf - | wc -l
