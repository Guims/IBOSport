.class public final LK5/z;
.super Ljava/lang/Object;

# interfaces
.implements LK5/i;


# instance fields
.field public final b:LK5/F;

.field public final q:LK5/g;

.field public r:Z


# direct methods
.method public constructor <init>(LK5/F;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/z;->b:LK5/F;

    new-instance p1, LK5/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/z;->q:LK5/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-boolean v0, p0, LK5/z;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0}, LK5/g;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LK5/z;->b:LK5/F;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, LK5/F;->read(LK5/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(BJJ)J
    .locals 9

    iget-boolean p2, p0, LK5/z;->r:Z

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    move-wide v3, p2

    :goto_0
    cmp-long p2, v3, p4

    const-wide/16 v7, -0x1

    if-gez p2, :cond_2

    iget-object v1, p0, LK5/z;->q:LK5/g;

    move v2, p1

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, LK5/g;->s(BJJ)J

    move-result-wide p1

    cmp-long p3, p1, v7

    if-eqz p3, :cond_0

    return-wide p1

    :cond_0
    iget-wide p1, v1, LK5/g;->q:J

    cmp-long p3, p1, v5

    if-gez p3, :cond_2

    iget-object p3, p0, LK5/z;->b:LK5/F;

    const-wide/16 p4, 0x2000

    invoke-interface {p3, v1, p4, p5}, LK5/F;->read(LK5/g;J)J

    move-result-wide p3

    cmp-long p3, p3, v7

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move p1, v2

    move-wide p4, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    move-wide v5, p4

    const-string p1, "fromIndex=0 toIndex="

    invoke-static {v5, v6, p1}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(J)LK5/j;
    .locals 1

    invoke-virtual {p0, p1, p2}, LK5/z;->t(J)V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0, p1, p2}, LK5/g;->c(J)LK5/j;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, LK5/z;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LK5/z;->r:Z

    iget-object v0, p0, LK5/z;->b:LK5/F;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0}, LK5/g;->a()V

    :cond_0
    return-void
.end method

.method public final d()[B
    .locals 4

    iget-object v0, p0, LK5/z;->b:LK5/F;

    iget-object v1, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v1, v0}, LK5/g;->e(LK5/F;)J

    iget-wide v2, v1, LK5/g;->q:J

    invoke-virtual {v1, v2, v3}, LK5/g;->z(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, LK5/z;->t(J)V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0}, LK5/g;->readInt()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final g(J)Ljava/lang/String;
    .locals 18

    move-wide/from16 v6, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v6, v8

    const-wide/16 v10, 0x1

    if-nez v0, :cond_0

    move-wide v4, v8

    goto :goto_0

    :cond_0
    add-long v0, v6, v10

    move-wide v4, v0

    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LK5/z;->b(BJJ)J

    move-result-wide v1

    const-wide/16 v12, -0x1

    cmp-long v3, v1, v12

    iget-object v12, v0, LK5/z;->q:LK5/g;

    if-eqz v3, :cond_1

    invoke-static {v12, v1, v2}, LL5/a;->a(LK5/g;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    invoke-virtual {v0, v4, v5}, LK5/z;->x(J)Z

    move-result v1

    if-eqz v1, :cond_2

    sub-long v1, v4, v10

    invoke-virtual {v12, v1, v2}, LK5/g;->r(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    add-long v1, v4, v10

    invoke-virtual {v0, v1, v2}, LK5/z;->x(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v12, v4, v5}, LK5/g;->r(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    invoke-static {v12, v4, v5}, LL5/a;->a(LK5/g;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v13, LK5/g;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iget-wide v1, v12, LK5/g;->q:J

    const/16 v3, 0x20

    int-to-long v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v17}, LK5/g;->f(LK5/g;JJ)V

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v12, LK5/g;->q:J

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, LK5/g;->q:J

    invoke-virtual {v13, v3, v4}, LK5/g;->c(J)LK5/j;

    move-result-object v3

    invoke-virtual {v3}, LK5/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2026

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v0, p0

    const-string v1, "limit < 0: "

    invoke-static {v6, v7, v1}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final h()J
    .locals 21

    move-object/from16 v0, p0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, LK5/z;->t(J)V

    iget-object v1, v0, LK5/z;->q:LK5/g;

    iget-wide v2, v1, LK5/g;->q:J

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v2, v1, LK5/g;->b:LK5/A;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget v3, v2, LK5/A;->b:I

    iget v6, v2, LK5/A;->c:I

    sub-int v7, v6, v3

    int-to-long v7, v7

    cmp-long v7, v7, v4

    const/16 v10, 0x38

    const/16 v12, 0x20

    const-wide/16 v13, 0xff

    if-gez v7, :cond_0

    invoke-virtual {v1}, LK5/g;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    shl-long/2addr v2, v12

    invoke-virtual {v1}, LK5/g;->readInt()I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long v1, v2, v4

    move v15, v10

    const/16 v18, 0x8

    const/16 v19, 0x18

    const/16 v20, 0x28

    goto :goto_1

    :cond_0
    iget-object v7, v2, LK5/A;->a:[B

    add-int/lit8 v15, v3, 0x1

    move-wide/from16 v16, v4

    aget-byte v4, v7, v3

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v10

    add-int/lit8 v18, v3, 0x2

    aget-byte v15, v7, v15

    const/16 v19, 0x18

    const/16 v20, 0x28

    int-to-long v8, v15

    and-long/2addr v8, v13

    const/16 v15, 0x30

    shl-long/2addr v8, v15

    or-long/2addr v4, v8

    add-int/lit8 v8, v3, 0x3

    aget-byte v9, v7, v18

    move v15, v10

    const/16 v18, 0x8

    int-to-long v10, v9

    and-long v9, v10, v13

    shl-long v9, v9, v20

    or-long/2addr v4, v9

    add-int/lit8 v9, v3, 0x4

    aget-byte v8, v7, v8

    int-to-long v10, v8

    and-long/2addr v10, v13

    shl-long/2addr v10, v12

    or-long/2addr v4, v10

    add-int/lit8 v8, v3, 0x5

    aget-byte v9, v7, v9

    int-to-long v9, v9

    and-long/2addr v9, v13

    shl-long v9, v9, v19

    or-long/2addr v4, v9

    add-int/lit8 v9, v3, 0x6

    aget-byte v8, v7, v8

    int-to-long v10, v8

    and-long/2addr v10, v13

    const/16 v8, 0x10

    shl-long/2addr v10, v8

    or-long/2addr v4, v10

    add-int/lit8 v8, v3, 0x7

    aget-byte v9, v7, v9

    int-to-long v9, v9

    and-long/2addr v9, v13

    shl-long v9, v9, v18

    or-long/2addr v4, v9

    add-int/lit8 v3, v3, 0x8

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v13

    or-long/2addr v4, v7

    iget-wide v7, v1, LK5/g;->q:J

    sub-long v7, v7, v16

    iput-wide v7, v1, LK5/g;->q:J

    if-ne v3, v6, :cond_1

    invoke-virtual {v2}, LK5/A;->a()LK5/A;

    move-result-object v3

    iput-object v3, v1, LK5/g;->b:LK5/A;

    invoke-static {v2}, LK5/B;->a(LK5/A;)V

    :goto_0
    move-wide v1, v4

    goto :goto_1

    :cond_1
    iput v3, v2, LK5/A;->b:I

    goto :goto_0

    :goto_1
    const-wide/high16 v3, -0x100000000000000L

    and-long/2addr v3, v1

    ushr-long/2addr v3, v15

    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v5, v1

    ushr-long v5, v5, v20

    or-long/2addr v3, v5

    const-wide v5, 0xff0000000000L

    and-long/2addr v5, v1

    ushr-long v5, v5, v19

    or-long/2addr v3, v5

    const-wide v5, 0xff00000000L

    and-long/2addr v5, v1

    ushr-long v5, v5, v18

    or-long/2addr v3, v5

    const-wide v5, 0xff000000L

    and-long/2addr v5, v1

    shl-long v5, v5, v18

    or-long/2addr v3, v5

    const-wide/32 v5, 0xff0000

    and-long/2addr v5, v1

    shl-long v5, v5, v19

    or-long/2addr v3, v5

    const-wide/32 v5, 0xff00

    and-long/2addr v5, v1

    shl-long v5, v5, v20

    or-long/2addr v3, v5

    and-long/2addr v1, v13

    shl-long/2addr v1, v15

    or-long/2addr v1, v3

    return-wide v1

    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, LK5/z;->r:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LK5/z;->b:LK5/F;

    iget-object v1, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v1, v0}, LK5/g;->e(LK5/F;)J

    iget-wide v2, v1, LK5/g;->q:J

    invoke-virtual {v1, v2, v3, p1}, LK5/g;->B(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k(LK5/g;)J
    .locals 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    iget-object v4, p0, LK5/z;->b:LK5/F;

    const-wide/16 v5, 0x2000

    iget-object v7, p0, LK5/z;->q:LK5/g;

    invoke-interface {v4, v7, v5, v6}, LK5/F;->read(LK5/g;J)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    invoke-virtual {v7}, LK5/g;->b()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, LK5/g;->q(LK5/g;J)V

    goto :goto_0

    :cond_1
    iget-wide v4, v7, LK5/g;->q:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, LK5/g;->q(LK5/g;J)V

    :cond_2
    return-wide v2
.end method

.method public final m()LK5/j;
    .locals 4

    iget-object v0, p0, LK5/z;->b:LK5/F;

    iget-object v1, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v1, v0}, LK5/g;->e(LK5/F;)J

    iget-wide v2, v1, LK5/g;->q:J

    invoke-virtual {v1, v2, v3}, LK5/g;->c(J)LK5/j;

    move-result-object v0

    return-object v0
.end method

.method public final n(LK5/w;)I
    .locals 6

    const-string v0, "options"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LK5/z;->r:Z

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, LK5/z;->q:LK5/g;

    invoke-static {v1, p1, v0}, LL5/a;->b(LK5/g;LK5/w;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_2

    iget-object p1, p1, LK5/w;->b:[LK5/j;

    aget-object p1, p1, v0

    invoke-virtual {p1}, LK5/j;->b()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, LK5/g;->skip(J)V

    return v0

    :cond_1
    iget-object v0, p0, LK5/z;->b:LK5/F;

    const-wide/16 v4, 0x2000

    invoke-interface {v0, v1, v4, v5}, LK5/F;->read(LK5/g;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    :cond_2
    return v3

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, LK5/z;->g(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, LK5/z;->t(J)V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0}, LK5/g;->A()S

    move-result v0

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    iget-wide v1, v0, LK5/g;->q:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, LK5/z;->b:LK5/F;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, LK5/F;->read(LK5/g;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, LK5/g;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final read(LK5/g;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, LK5/z;->r:Z

    if-nez v2, :cond_1

    iget-object v2, p0, LK5/z;->q:LK5/g;

    iget-wide v3, v2, LK5/g;->q:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/z;->b:LK5/F;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, LK5/F;->read(LK5/g;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    return-wide v3

    :cond_0
    iget-wide v0, v2, LK5/g;->q:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, LK5/g;->read(LK5/g;J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "byteCount < 0: "

    invoke-static {p2, p3, p1}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, LK5/z;->t(J)V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0}, LK5/g;->readByte()B

    move-result v0

    return v0
.end method

.method public final readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, LK5/z;->t(J)V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0}, LK5/g;->readInt()I

    move-result v0

    return v0
.end method

.method public final readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, LK5/z;->t(J)V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0}, LK5/g;->readShort()S

    move-result v0

    return v0
.end method

.method public final s(J)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, LK5/z;->t(J)V

    iget-object v0, p0, LK5/z;->q:LK5/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lk5/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1, p2, v1}, LK5/g;->B(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final skip(J)V
    .locals 5

    iget-boolean v0, p0, LK5/z;->r:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, LK5/z;->q:LK5/g;

    iget-wide v3, v2, LK5/g;->q:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, LK5/z;->b:LK5/F;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, LK5/F;->read(LK5/g;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-wide v0, v2, LK5/g;->q:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, LK5/g;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LK5/z;->x(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LK5/z;->b:LK5/F;

    invoke-interface {v0}, LK5/F;->timeout()LK5/H;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LK5/z;->b:LK5/F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, LK5/z;->t(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, LK5/z;->x(J)Z

    move-result v2

    iget-object v3, p0, LK5/z;->q:LK5/g;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, LK5/g;->r(J)B

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    if-le v2, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v2, v4, :cond_1

    const/16 v4, 0x66

    if-le v2, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v2, v4, :cond_3

    const/16 v4, 0x46

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x10

    invoke-static {v1}, LE2/g;->c(I)V

    invoke-static {v1}, LE2/g;->c(I)V

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(this, checkRadix(radix))"

    invoke-static {v1, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v3}, LK5/g;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()Ljava/io/InputStream;
    .locals 2

    new-instance v0, LK5/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LK5/e;-><init>(LK5/i;I)V

    return-object v0
.end method

.method public final x(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, LK5/z;->r:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, LK5/z;->q:LK5/g;

    iget-wide v1, v0, LK5/g;->q:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget-object v1, p0, LK5/z;->b:LK5/F;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, LK5/F;->read(LK5/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "byteCount < 0: "

    invoke-static {p1, p2, v0}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
