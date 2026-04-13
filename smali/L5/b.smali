.class public abstract LL5/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, LL5/b;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final a(C)I
    .locals 3

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x67

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x47

    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 4

    sget-object v0, LK5/x;->q:Ljava/lang/String;

    const-string v0, "/"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh3/e;->t(Ljava/lang/String;Z)LK5/x;

    move-result-object v0

    new-instance v2, LL5/f;

    invoke-direct {v2, v0}, LL5/f;-><init>(LK5/x;)V

    new-instance v3, LS4/d;

    invoke-direct {v3, v0, v2}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3}, [LS4/d;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, LT4/s;->u(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v2, v0}, LT4/s;->v(Ljava/util/LinkedHashMap;[LS4/d;)V

    new-instance v0, LL5/g;

    invoke-direct {v0, v1}, LL5/g;-><init>(I)V

    invoke-static {p0, v0}, LT4/g;->C(Ljava/util/ArrayList;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL5/f;

    iget-object v1, v0, LL5/f;->a:LK5/x;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL5/f;

    if-nez v1, :cond_0

    :goto_1
    iget-object v0, v0, LL5/f;->a:LK5/x;

    invoke-virtual {v0}, LK5/x;->c()LK5/x;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL5/f;

    if-eqz v3, :cond_2

    iget-object v1, v3, LL5/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, LL5/f;

    invoke-direct {v3, v1}, LL5/f;-><init>(LK5/x;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, LL5/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public static final c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, LE2/g;->c(I)V

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(this, checkRadix(radix))"

    invoke-static {p0, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LK5/z;)LL5/f;
    .locals 22

    move-object/from16 v5, p0

    invoke-virtual {v5}, LK5/z;->f()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_8

    const-wide/16 v0, 0x4

    invoke-virtual {v5, v0, v1}, LK5/z;->skip(J)V

    invoke-virtual {v5}, LK5/z;->r()S

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    invoke-virtual {v5}, LK5/z;->r()S

    move-result v0

    and-int v10, v0, v1

    invoke-virtual {v5}, LK5/z;->r()S

    move-result v0

    and-int v2, v0, v1

    invoke-virtual {v5}, LK5/z;->r()S

    move-result v3

    and-int v4, v3, v1

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-ne v2, v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v6, 0xe

    invoke-virtual {v11, v6, v8}, Ljava/util/Calendar;->set(II)V

    shr-int/lit8 v6, v4, 0x9

    and-int/lit8 v6, v6, 0x7f

    add-int/lit16 v12, v6, 0x7bc

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0xf

    and-int/lit8 v14, v3, 0x1f

    shr-int/lit8 v3, v2, 0xb

    and-int/lit8 v15, v3, 0x1f

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v16, v2, 0x3f

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v17, v0, 0x1

    add-int/lit8 v13, v4, -0x1

    invoke-virtual/range {v11 .. v17}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v5}, LK5/z;->f()I

    new-instance v6, Le5/l;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, LK5/z;->f()I

    move-result v0

    int-to-long v2, v0

    const-wide v12, 0xffffffffL

    and-long/2addr v2, v12

    iput-wide v2, v6, Le5/l;->b:J

    new-instance v4, Le5/l;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, LK5/z;->f()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v12

    iput-wide v2, v4, Le5/l;->b:J

    invoke-virtual {v5}, LK5/z;->r()S

    move-result v0

    and-int/2addr v0, v1

    invoke-virtual {v5}, LK5/z;->r()S

    move-result v2

    and-int v9, v2, v1

    invoke-virtual {v5}, LK5/z;->r()S

    move-result v2

    and-int v14, v2, v1

    const-wide/16 v1, 0x8

    invoke-virtual {v5, v1, v2}, LK5/z;->skip(J)V

    new-instance v7, Le5/l;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, LK5/z;->f()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v12

    iput-wide v1, v7, Le5/l;->b:J

    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, LK5/z;->s(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v8}, Lk5/f;->I(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, v4, Le5/l;->b:J

    cmp-long v0, v0, v12

    const-wide/16 v16, 0x0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    int-to-long v2, v1

    :goto_2
    move-wide/from16 v18, v12

    goto :goto_3

    :cond_1
    move-wide/from16 v2, v16

    goto :goto_2

    :goto_3
    iget-wide v12, v6, Le5/l;->b:J

    cmp-long v0, v12, v18

    if-nez v0, :cond_2

    int-to-long v12, v1

    add-long/2addr v2, v12

    :cond_2
    iget-wide v12, v7, Le5/l;->b:J

    cmp-long v0, v12, v18

    if-nez v0, :cond_3

    int-to-long v0, v1

    add-long/2addr v2, v0

    :cond_3
    new-instance v1, Le5/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v0, LL5/h;

    invoke-direct/range {v0 .. v7}, LL5/h;-><init>(Le5/j;JLe5/l;LK5/z;Le5/l;Le5/l;)V

    invoke-static {v5, v9, v0}, LL5/b;->e(LK5/z;ILd5/p;)V

    cmp-long v0, v2, v16

    if-lez v0, :cond_5

    iget-boolean v0, v1, Le5/j;->b:Z

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_4
    int-to-long v0, v14

    invoke-virtual {v5, v0, v1}, LK5/z;->s(J)Ljava/lang/String;

    move-result-object v5

    sget-object v0, LK5/x;->q:Ljava/lang/String;

    const-string v0, "/"

    invoke-static {v0, v8}, Lh3/e;->t(Ljava/lang/String;Z)LK5/x;

    move-result-object v1

    invoke-virtual {v1, v15}, LK5/x;->d(Ljava/lang/String;)LK5/x;

    move-result-object v3

    invoke-static {v15, v0, v8}, Lk5/n;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, LL5/f;

    iget-wide v8, v6, Le5/l;->b:J

    iget-wide v12, v4, Le5/l;->b:J

    iget-wide v6, v7, Le5/l;->b:J

    move-wide/from16 v20, v12

    move-wide v12, v6

    move-wide v6, v8

    move-wide/from16 v8, v20

    move v4, v0

    invoke-direct/range {v2 .. v13}, LL5/f;-><init>(LK5/x;ZLjava/lang/String;JJILjava/lang/Long;J)V

    return-object v2

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unsupported zip: general purpose bit flag="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, LL5/b;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bad zip: expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LL5/b;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LL5/b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final e(LK5/z;ILd5/p;)V
    .locals 11

    iget-object v0, p0, LK5/z;->q:LK5/g;

    int-to-long v1, p1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    const-wide/16 v5, 0x4

    cmp-long p1, v1, v5

    if-ltz p1, :cond_3

    invoke-virtual {p0}, LK5/z;->r()S

    move-result p1

    const v5, 0xffff

    and-int/2addr p1, v5

    invoke-virtual {p0}, LK5/z;->r()S

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0xffff

    and-long/2addr v5, v7

    const/4 v7, 0x4

    int-to-long v7, v7

    sub-long/2addr v1, v7

    cmp-long v7, v1, v5

    if-ltz v7, :cond_2

    invoke-virtual {p0, v5, v6}, LK5/z;->t(J)V

    iget-wide v7, v0, LK5/g;->q:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v9, v0, LK5/g;->q:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v7

    cmp-long v3, v9, v3

    if-ltz v3, :cond_1

    if-lez v3, :cond_0

    invoke-virtual {v0, v9, v10}, LK5/g;->skip(J)V

    :cond_0
    sub-long/2addr v1, v5

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p2, "unsupported zip: too many bytes processed for "

    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static final f(LK5/z;LK5/m;)LK5/m;
    .locals 12

    new-instance v0, Le5/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, LK5/m;->e:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Le5/m;->b:Ljava/lang/Object;

    new-instance v2, Le5/m;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Le5/m;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, LK5/z;->f()I

    move-result v4

    const v5, 0x4034b50

    if-ne v4, v5, :cond_3

    const-wide/16 v4, 0x2

    invoke-virtual {p0, v4, v5}, LK5/z;->skip(J)V

    invoke-virtual {p0}, LK5/z;->r()S

    move-result v4

    const v5, 0xffff

    and-int v6, v4, v5

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    const-wide/16 v6, 0x12

    invoke-virtual {p0, v6, v7}, LK5/z;->skip(J)V

    invoke-virtual {p0}, LK5/z;->r()S

    move-result v4

    int-to-long v6, v4

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    invoke-virtual {p0}, LK5/z;->r()S

    move-result v4

    and-int/2addr v4, v5

    invoke-virtual {p0, v6, v7}, LK5/z;->skip(J)V

    if-nez p1, :cond_1

    int-to-long v2, v4

    invoke-virtual {p0, v2, v3}, LK5/z;->skip(J)V

    return-object v1

    :cond_1
    new-instance v1, LL5/i;

    invoke-direct {v1, p0, v0, v2, v3}, LL5/i;-><init>(LK5/z;Le5/m;Le5/m;Le5/m;)V

    invoke-static {p0, v4, v1}, LL5/b;->e(LK5/z;ILd5/p;)V

    new-instance v5, LK5/m;

    iget-boolean v6, p1, LK5/m;->a:Z

    iget-boolean v7, p1, LK5/m;->b:Z

    iget-object v8, p1, LK5/m;->c:Ljava/lang/Long;

    iget-object p0, v3, Le5/m;->b:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Ljava/lang/Long;

    iget-object p0, v0, Le5/m;->b:Ljava/lang/Object;

    move-object v10, p0

    check-cast v10, Ljava/lang/Long;

    iget-object p0, v2, Le5/m;->b:Ljava/lang/Object;

    move-object v11, p0

    check-cast v11, Ljava/lang/Long;

    invoke-direct/range {v5 .. v11}, LK5/m;-><init>(ZZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v5

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unsupported zip: general purpose bit flag="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, LL5/b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bad zip: expected "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, LL5/b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, LL5/b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(LK5/C;I)I
    .locals 4

    iget-object v0, p0, LK5/C;->u:[I

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, LK5/C;->t:[[B

    array-length p0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p0, :cond_1

    add-int v2, v1, p0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, v0, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v1

    add-int/lit8 v2, p0, -0x1

    :cond_2
    if-ltz v2, :cond_3

    return v2

    :cond_3
    not-int p0, v2

    return p0
.end method
