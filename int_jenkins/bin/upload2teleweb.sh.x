��
���Rc           @   s�   d  d k  Z  d  d k Z d  d k Z e  i i d � d  d k Z d �  Z d �  Z e d j oC e	 e  i
 � d j o e �  q� e e  i
 d e  i
 d d	 � n d S(
   i����Ns   /local/tools_sdd1/libc         C   s  d | } t  i | � } t i | _ x\ t oT y | i d � | i | � Wq( t  i j
 o Pq( t  i	 j
 o
 q( q( Xq( Wd |  | f } t  i | � } t i | _ x\ t oT y | i d � | i | � Wq� t  i j
 o Pq� t  i	 j
 o
 q� q� Xq� Wd GHd  S(   Ns_   ssh sl_hz_hran@10.92.32.20 rm -rfv /mfs/teleweb/%ss"   sl_hz_hran@10.92.32.20's password:s^   scp -vr %s sl_hz_hran@10.92.32.20:/mfs/teleweb/%ss   upload to Teleweb(
   t   pexpectt   spawnt   syst   stdoutt   logfilet   Truet   expectt   sendlinet   EOFt   TIMEOUT(   t   releaseNamet   dstt
   telewebPwdt   cmdRmt   childRmt   cmdScpt   childScp(    (    s   upload2teleweb.sht   uploadToTeleweb   s2    
  c           C   s	   d GHd  S(   Ns   pls input right paraments!(    (    (    (    s   upload2teleweb.sht   HelpInfo*   s    t   __main__i   i   i   s   lin@321(   R   t   ost   ret   patht   appendR    R   R   t   __name__t   lent   argv(    (    (    s   upload2teleweb.sht   <module>   s   		