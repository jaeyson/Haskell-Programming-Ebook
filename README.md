# Haskell-Programming-Ebook

## 1.11 Chapter exercises
<!-- &lambda; &fnof; -->
### Equivalence

1. &lambda;xy.xz == b) &lambda;mn.mz
2. &lambda;xy.xxy == c) &lambda;a.(&lambda;b.aab)
3. &lambda;xyz.zx == b) &lambda;tos.st

### Combinators

1. &lambda;x.xxx == Combinator
2. &lambda;xy.zx != Combinator (z being free variable)
3. &lambda;xyz.xy(zx) == Combinator
4. &lambda;xyz.xy(zxy) == Combinator
5. &lambda;xy.xy(zxy) != Combinator (z being free variable, isn't bound in the head)

### Normal form or Diverge(Omega = &omega;)?

1. &lambda;x.xxx == Normal form
2. (&lambda;z.zz)(&lambda;y.yy) == &omega;
3. (&lambda;x.xxx)z == Normal form

### Beta reduce

1. (&lambda;abc.cba)zz(&lambda;wv.w)
    - (&lambda;a.&lambda;b.&lambda;c.cba)(z)z(&lambda;wv.w)
    - (&lambda;b.&lambda;c.cbz)(z)(&lambda;wv.w)
    - (&lambda;c.czz)(&lambda;wv.w)
    - (&lambda;wv.w)zz
    - (z)z
    - zz

2. (&lambda;x.&lambda;y.xyy)(&lambda;a.a)b
    - (&lambda;y.(&lambda;a.a)yy)b
    - (&lambda;a.a)bb
    - (b)b
    - bb

3. (&lambda;y.y)(&lambda;x.xx)(&lambda;z.zq)
    - (&lambda;x.xx)(&lambda;z.zq)
    - (&lambda;z.zq)(&lambda;z.zq)
    - (&lambda;z.zq)q
    - qq

4. (&lambda;z.z)(&lambda;z.zz)(&lambda;z.zy)
    - (&lambda;z.zz)(&lambda;z.zy)
    - (&lambda;z.zy)(&lambda;z.zy)
    - (&lambda;z.zy)y
    - (y)y
    - yy

5. (&lambda;x.&lambda;y.xyy)(&lambda;y.y)y
    - (&lambda;y.(&lambda;y.y)yy)y
    - (&lambda;y.y)yy
    - (y)y
    - yy

6. (&lambda;a.aa)(&lambda;b.ba)c
    - (&lambda;b.ba)(&lambda;b.ba)c
    - (&lambda;b.ba)(a)c
    - aac

7. (&lambda;xyz.xz(yz))(&lambda;x.z)(&lambda;x.a)
    - (&lambda;x.&lambda;y.&lambda;z.xz(yz))(&lambda;x.z)(&lambda;x.a)
    - (&lambda;y.&lambda;z1.(&lambda;x.z)xz1(yz1))(&lambda;x.a)
    - &lambda;z1.(&lambda;x.z)(xz1)((&lambda;x.a)z1)
    - (&lambda;z1.z((&lambda;x.a)(z1)))
    - (&lambda;z1.za)

