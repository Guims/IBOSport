.class public final Lv0/o;
.super LB0/o;


# static fields
.field public static final a0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A:I

.field public final B:Landroid/net/Uri;

.field public final C:Z

.field public final D:I

.field public final E:Landroidx/media3/datasource/DataSource;

.field public final F:Landroidx/media3/datasource/DataSpec;

.field public final G:Lv0/b;

.field public final H:Z

.field public final I:Z

.field public final J:Lk0/z;

.field public final K:Lv0/m;

.field public final L:Ljava/util/List;

.field public final M:Landroidx/media3/common/DrmInitData;

.field public final N:LW0/i;

.field public final O:Lk0/u;

.field public final P:Z

.field public final Q:Z

.field public R:Lv0/b;

.field public S:Lv0/w;

.field public T:I

.field public U:Z

.field public volatile V:Z

.field public W:Z

.field public X:Lp3/H;

.field public Y:Z

.field public Z:Z

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lv0/o;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lv0/m;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ZLandroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLk0/z;Landroidx/media3/common/DrmInitData;Lv0/b;LW0/i;Lk0/u;ZLq0/q;)V
    .locals 13

    move-object/from16 v0, p7

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p11

    move-object/from16 v6, p12

    move-wide/from16 v7, p13

    move-wide/from16 v9, p15

    move-wide/from16 v11, p17

    invoke-direct/range {v1 .. v12}, LB0/o;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJ)V

    move/from16 p2, p5

    iput-boolean p2, p0, Lv0/o;->P:Z

    move/from16 p2, p19

    iput p2, p0, Lv0/o;->D:I

    move/from16 p2, p20

    iput-boolean p2, p0, Lv0/o;->Z:Z

    move/from16 p2, p21

    iput p2, p0, Lv0/o;->A:I

    iput-object v0, p0, Lv0/o;->F:Landroidx/media3/datasource/DataSpec;

    move-object/from16 p2, p6

    iput-object p2, p0, Lv0/o;->E:Landroidx/media3/datasource/DataSource;

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lv0/o;->U:Z

    move/from16 p2, p8

    iput-boolean p2, p0, Lv0/o;->Q:Z

    move-object/from16 p2, p9

    iput-object p2, p0, Lv0/o;->B:Landroid/net/Uri;

    move/from16 p2, p23

    iput-boolean p2, p0, Lv0/o;->H:Z

    move-object/from16 p2, p24

    iput-object p2, p0, Lv0/o;->J:Lk0/z;

    move/from16 p2, p22

    iput-boolean p2, p0, Lv0/o;->I:Z

    iput-object p1, p0, Lv0/o;->K:Lv0/m;

    move-object/from16 p1, p10

    iput-object p1, p0, Lv0/o;->L:Ljava/util/List;

    move-object/from16 p1, p25

    iput-object p1, p0, Lv0/o;->M:Landroidx/media3/common/DrmInitData;

    move-object/from16 p1, p26

    iput-object p1, p0, Lv0/o;->G:Lv0/b;

    move-object/from16 p1, p27

    iput-object p1, p0, Lv0/o;->N:LW0/i;

    move-object/from16 p1, p28

    iput-object p1, p0, Lv0/o;->O:Lk0/u;

    move/from16 p1, p29

    iput-boolean p1, p0, Lv0/o;->C:Z

    sget-object p1, Lp3/H;->q:Lp3/F;

    sget-object p1, Lp3/Y;->t:Lp3/Y;

    iput-object p1, p0, Lv0/o;->X:Lp3/H;

    sget-object p1, Lv0/o;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lv0/o;->z:I

    return-void
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 4

    invoke-static {p0}, LE5/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget p3, p0, Lv0/o;->T:I

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    move-object p3, p2

    goto :goto_0

    :cond_1
    iget p3, p0, Lv0/o;->T:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object p3

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lv0/o;->g(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)LI0/m;

    move-result-object p3

    if-eqz v0, :cond_2

    iget p4, p0, Lv0/o;->T:I

    invoke-virtual {p3, p4}, LI0/m;->n(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_6

    :cond_2
    :goto_1
    :try_start_1
    iget-boolean p4, p0, Lv0/o;->V:Z

    if-nez p4, :cond_3

    iget-object p4, p0, Lv0/o;->R:Lv0/b;

    iget-object p4, p4, Lv0/b;->a:LI0/q;

    sget-object v0, Lv0/b;->f:LI0/D;

    invoke-interface {p4, p3, v0}, LI0/q;->e(LI0/r;LI0/D;)I

    move-result p4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p4, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p4

    goto :goto_5

    :catch_0
    move-exception p4

    goto :goto_3

    :cond_3
    :try_start_2
    iget-wide p3, p3, LI0/m;->s:J

    :goto_2
    iget-wide v0, p2, Landroidx/media3/datasource/DataSpec;->position:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_3
    iget-object v0, p0, LB0/f;->s:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    iget-object p4, p0, Lv0/o;->R:Lv0/b;

    iget-object p4, p4, Lv0/b;->a:LI0/q;

    const-wide/16 v0, 0x0

    invoke-interface {p4, v0, v1, v0, v1}, LI0/q;->f(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-wide p3, p3, LI0/m;->s:J

    goto :goto_2

    :goto_4
    sub-long/2addr p3, v0

    long-to-int p2, p3

    iput p2, p0, Lv0/o;->T:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    return-void

    :cond_4
    :try_start_5
    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    :try_start_6
    iget-wide v0, p3, LI0/m;->s:J

    iget-wide p2, p2, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lv0/o;->T:I

    throw p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    invoke-static {p1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    throw p2
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lv0/o;->S:Lv0/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lv0/o;->R:Lv0/b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lv0/o;->G:Lv0/b;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lv0/b;->a:LI0/q;

    instance-of v3, v2, Lo1/I;

    if-nez v3, :cond_0

    instance-of v2, v2, Lc1/i;

    if-eqz v2, :cond_1

    :cond_0
    iput-object v0, p0, Lv0/o;->R:Lv0/b;

    iput-boolean v1, p0, Lv0/o;->U:Z

    :cond_1
    iget-object v0, p0, Lv0/o;->F:Landroidx/media3/datasource/DataSpec;

    iget-object v2, p0, Lv0/o;->E:Landroidx/media3/datasource/DataSource;

    iget-boolean v3, p0, Lv0/o;->U:Z

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p0, Lv0/o;->Q:Z

    invoke-virtual {p0, v2, v0, v3, v1}, Lv0/o;->c(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V

    iput v1, p0, Lv0/o;->T:I

    iput-boolean v1, p0, Lv0/o;->U:Z

    :goto_0
    iget-boolean v0, p0, Lv0/o;->V:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lv0/o;->I:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    iget-object v2, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-boolean v3, p0, Lv0/o;->P:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lv0/o;->c(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V

    :cond_3
    iget-boolean v0, p0, Lv0/o;->V:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lv0/o;->W:Z

    :cond_4
    return-void
.end method

.method public final f(I)I
    .locals 1

    iget-boolean v0, p0, Lv0/o;->C:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, Lv0/o;->X:Lp3/H;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lv0/o;->X:Lp3/H;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final g(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)LI0/m;
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p2}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v6

    iget-wide v8, v1, LB0/f;->v:J

    iget-object v10, v1, Lv0/o;->J:Lk0/z;

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v2, v1, Lv0/o;->H:Z

    invoke-virtual {v10, v8, v9, v2}, Lk0/z;->g(JZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_0
    :goto_0
    new-instance v2, LI0/m;

    iget-wide v4, v0, Landroidx/media3/datasource/DataSpec;->position:J

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, LI0/m;-><init>(Landroidx/media3/common/DataReader;JJ)V

    iget-object v3, v1, Lv0/o;->R:Lv0/b;

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    iget-object v3, v1, Lv0/o;->O:Lk0/u;

    iput v4, v2, LI0/m;->u:I

    const/16 v7, 0x8

    const/16 v11, 0xa

    :try_start_1
    invoke-virtual {v3, v11}, Lk0/u;->D(I)V

    iget-object v12, v3, Lk0/u;->a:[B

    invoke-virtual {v2, v12, v4, v11, v4}, LI0/m;->d([BIIZ)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {v3}, Lk0/u;->x()I

    move-result v12

    const v13, 0x494433

    if-eq v12, v13, :cond_1

    :goto_1
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_1
    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Lk0/u;->H(I)V

    invoke-virtual {v3}, Lk0/u;->t()I

    move-result v12

    add-int/lit8 v13, v12, 0xa

    iget-object v14, v3, Lk0/u;->a:[B

    array-length v15, v14

    if-le v13, v15, :cond_2

    invoke-virtual {v3, v13}, Lk0/u;->D(I)V

    iget-object v13, v3, Lk0/u;->a:[B

    invoke-static {v14, v4, v13, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v13, v3, Lk0/u;->a:[B

    invoke-virtual {v2, v13, v11, v12, v4}, LI0/m;->d([BIIZ)Z

    iget-object v11, v1, Lv0/o;->N:LW0/i;

    iget-object v13, v3, Lk0/u;->a:[B

    invoke-virtual {v11, v13, v12}, LW0/i;->s([BI)Landroidx/media3/common/Metadata;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Landroidx/media3/common/Metadata;->length()I

    move-result v12

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_6

    invoke-virtual {v11, v13}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v14

    instance-of v15, v14, LW0/n;

    if-eqz v15, :cond_4

    check-cast v14, LW0/n;

    const-string v15, "com.apple.streaming.transportStreamTimestamp"

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v5, v14, LW0/n;->q:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v14, LW0/n;->r:[B

    iget-object v6, v3, Lk0/u;->a:[B

    invoke-static {v5, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v4}, Lk0/u;->G(I)V

    invoke-virtual {v3, v7}, Lk0/u;->F(I)V

    invoke-virtual {v3}, Lk0/u;->o()J

    move-result-wide v5

    const-wide v11, 0x1ffffffffL

    and-long/2addr v5, v11

    goto :goto_3

    :cond_4
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catch_2
    :cond_6
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v5, v16

    :goto_3
    iput v4, v2, LI0/m;->u:I

    const/4 v3, 0x1

    iget-object v13, v1, Lv0/o;->G:Lv0/b;

    if-eqz v13, :cond_e

    iget-object v0, v13, Lv0/b;->a:LI0/q;

    instance-of v7, v0, Lo1/I;

    if-nez v7, :cond_8

    instance-of v7, v0, Lc1/i;

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    move v7, v4

    goto :goto_5

    :cond_8
    :goto_4
    move v7, v3

    :goto_5
    xor-int/2addr v7, v3

    invoke-static {v7}, Lk0/c;->j(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    instance-of v7, v0, Lv0/z;

    if-eqz v7, :cond_9

    new-instance v0, Lv0/z;

    iget-object v7, v13, Lv0/b;->b:Landroidx/media3/common/Format;

    iget-object v7, v7, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v14, v13, Lv0/b;->c:Lk0/z;

    iget-object v15, v13, Lv0/b;->d:Lf1/k;

    iget-boolean v11, v13, Lv0/b;->e:Z

    invoke-direct {v0, v7, v14, v15, v11}, Lv0/z;-><init>(Ljava/lang/String;Lk0/z;Lf1/k;Z)V

    :goto_6
    move-object/from16 v19, v0

    goto :goto_7

    :cond_9
    instance-of v7, v0, Lo1/e;

    if-eqz v7, :cond_a

    new-instance v0, Lo1/e;

    invoke-direct {v0, v4}, Lo1/e;-><init>(I)V

    goto :goto_6

    :cond_a
    instance-of v7, v0, Lo1/a;

    if-eqz v7, :cond_b

    new-instance v0, Lo1/a;

    invoke-direct {v0}, Lo1/a;-><init>()V

    goto :goto_6

    :cond_b
    instance-of v7, v0, Lo1/c;

    if-eqz v7, :cond_c

    new-instance v0, Lo1/c;

    invoke-direct {v0}, Lo1/c;-><init>()V

    goto :goto_6

    :cond_c
    instance-of v7, v0, Lb1/d;

    if-eqz v7, :cond_d

    new-instance v0, Lb1/d;

    invoke-direct {v0, v4}, Lb1/d;-><init>(I)V

    goto :goto_6

    :goto_7
    new-instance v18, Lv0/b;

    iget-object v0, v13, Lv0/b;->b:Landroidx/media3/common/Format;

    iget-object v7, v13, Lv0/b;->c:Lk0/z;

    iget-object v11, v13, Lv0/b;->d:Lf1/k;

    iget-boolean v12, v13, Lv0/b;->e:Z

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v22, v11

    move/from16 v23, v12

    invoke-direct/range {v18 .. v23}, Lv0/b;-><init>(LI0/q;Landroidx/media3/common/Format;Lk0/z;Lf1/k;Z)V

    move/from16 v24, v3

    move-wide/from16 v31, v8

    move v8, v4

    :goto_8
    move-object/from16 v0, v18

    goto/16 :goto_17

    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unexpected extractor type for recreation: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v11

    iget-object v12, v1, Lv0/o;->K:Lv0/m;

    check-cast v12, Lv0/d;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v1, LB0/f;->s:Landroidx/media3/common/Format;

    iget-object v14, v13, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v14}, Landroidx/media3/common/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result v14

    invoke-static {v11}, Landroidx/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result v11

    invoke-static {v0}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result v0

    new-instance v15, Ljava/util/ArrayList;

    const/4 v7, 0x7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v14, v15}, Lv0/d;->a(ILjava/util/ArrayList;)V

    invoke-static {v11, v15}, Lv0/d;->a(ILjava/util/ArrayList;)V

    invoke-static {v0, v15}, Lv0/d;->a(ILjava/util/ArrayList;)V

    move v3, v4

    :goto_9
    if-ge v3, v7, :cond_f

    sget-object v18, Lv0/d;->c:[I

    aget v7, v18, v3

    invoke-static {v7, v15}, Lv0/d;->a(ILjava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x7

    goto :goto_9

    :cond_f
    iput v4, v2, LI0/m;->u:I

    move v7, v4

    const/16 v19, 0x0

    :goto_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v1, Lv0/o;->J:Lk0/z;

    if-ge v7, v3, :cond_24

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v18, v7

    if-eqz v3, :cond_20

    const/4 v7, 0x1

    if-eq v3, v7, :cond_1f

    const/4 v7, 0x2

    if-eq v3, v7, :cond_1e

    const/4 v7, 0x7

    if-eq v3, v7, :cond_1d

    iget-object v7, v1, Lv0/o;->L:Ljava/util/List;

    sget-object v21, Lf1/k;->g:LW3/e;

    move-object/from16 v22, v7

    const/16 v7, 0x8

    if-eq v3, v7, :cond_16

    const/16 v7, 0xb

    if-eq v3, v7, :cond_11

    const/16 v7, 0xd

    if-eq v3, v7, :cond_10

    move-object/from16 v29, v4

    move-wide/from16 v31, v8

    move-object/from16 v23, v15

    const/4 v7, 0x0

    :goto_b
    const/16 v24, 0x1

    goto/16 :goto_15

    :cond_10
    new-instance v7, Lv0/z;

    move-wide/from16 v31, v8

    iget-object v8, v13, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v9, v12, Lv0/d;->a:Lx2/f;

    move-object/from16 v23, v15

    iget-boolean v15, v12, Lv0/d;->b:Z

    invoke-direct {v7, v8, v4, v9, v15}, Lv0/z;-><init>(Ljava/lang/String;Lk0/z;Lf1/k;Z)V

    move-object/from16 v29, v4

    goto :goto_b

    :cond_11
    move-wide/from16 v31, v8

    move-object/from16 v23, v15

    iget-object v7, v12, Lv0/d;->a:Lx2/f;

    iget-boolean v8, v12, Lv0/d;->b:Z

    if-eqz v22, :cond_12

    const/16 v9, 0x30

    move v15, v9

    move-object/from16 v9, v22

    :goto_c
    move-object/from16 v29, v4

    goto :goto_d

    :cond_12
    new-instance v9, Landroidx/media3/common/Format$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v15, "application/cea-608"

    invoke-virtual {v9, v15}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v15, 0x10

    goto :goto_c

    :goto_d
    iget-object v4, v13, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    move-object/from16 v25, v7

    if-nez v22, :cond_14

    const-string v7, "audio/mp4a-latm"

    invoke-static {v4, v7}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    or-int/lit8 v15, v15, 0x2

    :cond_13
    const-string v7, "video/avc"

    invoke-static {v4, v7}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    or-int/lit8 v15, v15, 0x4

    :cond_14
    if-nez v8, :cond_15

    move-object/from16 v28, v21

    goto :goto_e

    :cond_15
    move-object/from16 v28, v25

    :goto_e
    xor-int/lit8 v27, v8, 0x1

    new-instance v25, Lo1/I;

    new-instance v4, Lo1/g;

    invoke-direct {v4, v15, v9}, Lo1/g;-><init>(ILjava/util/List;)V

    const/16 v26, 0x2

    move-object/from16 v30, v4

    invoke-direct/range {v25 .. v30}, Lo1/I;-><init>(IILf1/k;Lk0/z;Lo1/g;)V

    move-object/from16 v7, v25

    goto :goto_b

    :cond_16
    move-object/from16 v29, v4

    move-wide/from16 v31, v8

    move-object/from16 v23, v15

    iget-object v4, v12, Lv0/d;->a:Lx2/f;

    iget-boolean v7, v12, Lv0/d;->b:Z

    iget-object v8, v13, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v8, :cond_17

    move-object/from16 v25, v4

    const/4 v4, 0x0

    const/16 v24, 0x1

    goto :goto_10

    :cond_17
    const/4 v9, 0x0

    :goto_f
    invoke-virtual {v8}, Landroidx/media3/common/Metadata;->length()I

    move-result v15

    if-ge v9, v15, :cond_19

    invoke-virtual {v8, v9}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v15

    move-object/from16 v25, v4

    instance-of v4, v15, Lv0/y;

    if-eqz v4, :cond_18

    check-cast v15, Lv0/y;

    iget-object v4, v15, Lv0/y;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v24, 0x1

    xor-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_18
    const/16 v24, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v25

    goto :goto_f

    :cond_19
    move-object/from16 v25, v4

    const/16 v24, 0x1

    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_1a

    const/4 v4, 0x4

    goto :goto_11

    :cond_1a
    const/4 v4, 0x0

    :goto_11
    if-nez v7, :cond_1b

    or-int/lit8 v4, v4, 0x20

    move-object/from16 v26, v21

    :goto_12
    move/from16 v27, v4

    goto :goto_13

    :cond_1b
    move-object/from16 v26, v25

    goto :goto_12

    :goto_13
    new-instance v25, Lc1/i;

    if-eqz v22, :cond_1c

    move-object/from16 v7, v22

    goto :goto_14

    :cond_1c
    sget-object v4, Lp3/H;->q:Lp3/F;

    sget-object v7, Lp3/Y;->t:Lp3/Y;

    :goto_14
    const/16 v30, 0x0

    move-object/from16 v28, v29

    move-object/from16 v29, v7

    invoke-direct/range {v25 .. v30}, Lc1/i;-><init>(Lf1/k;ILk0/z;Ljava/util/List;Ls0/q;)V

    move-object/from16 v29, v28

    move-object/from16 v7, v25

    goto :goto_15

    :cond_1d
    move-object/from16 v29, v4

    move-wide/from16 v31, v8

    move-object/from16 v23, v15

    const/16 v24, 0x1

    new-instance v7, Lb1/d;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Lb1/d;-><init>(J)V

    goto :goto_15

    :cond_1e
    move-object/from16 v29, v4

    move-wide/from16 v31, v8

    move-object/from16 v23, v15

    const/16 v24, 0x1

    new-instance v7, Lo1/e;

    const/4 v4, 0x0

    invoke-direct {v7, v4}, Lo1/e;-><init>(I)V

    goto :goto_15

    :cond_1f
    move-object/from16 v29, v4

    move/from16 v24, v7

    move-wide/from16 v31, v8

    move-object/from16 v23, v15

    new-instance v7, Lo1/c;

    invoke-direct {v7}, Lo1/c;-><init>()V

    goto :goto_15

    :cond_20
    move-object/from16 v29, v4

    move-wide/from16 v31, v8

    move-object/from16 v23, v15

    const/16 v24, 0x1

    new-instance v7, Lo1/a;

    invoke-direct {v7}, Lo1/a;-><init>()V

    :goto_15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    invoke-interface {v7, v2}, LI0/q;->b(LI0/r;)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    iput v8, v2, LI0/m;->u:I

    goto :goto_16

    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    iput v8, v2, LI0/m;->u:I

    throw v0

    :catch_3
    const/4 v8, 0x0

    iput v8, v2, LI0/m;->u:I

    move v4, v8

    :goto_16
    if-eqz v4, :cond_21

    new-instance v18, Lv0/b;

    iget-object v0, v12, Lv0/d;->a:Lx2/f;

    iget-boolean v3, v12, Lv0/d;->b:Z

    move-object/from16 v22, v0

    move/from16 v23, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v13

    move-object/from16 v21, v29

    invoke-direct/range {v18 .. v23}, Lv0/b;-><init>(LI0/q;Landroidx/media3/common/Format;Lk0/z;Lf1/k;Z)V

    goto/16 :goto_8

    :cond_21
    move-object/from16 v20, v13

    const/16 v4, 0xb

    if-nez v19, :cond_23

    if-eq v3, v14, :cond_22

    if-eq v3, v11, :cond_22

    if-eq v3, v0, :cond_22

    if-ne v3, v4, :cond_23

    :cond_22
    move-object/from16 v19, v7

    :cond_23
    add-int/lit8 v7, v18, 0x1

    move v4, v8

    move-object/from16 v13, v20

    move-object/from16 v15, v23

    move-wide/from16 v8, v31

    goto/16 :goto_a

    :cond_24
    move-object/from16 v29, v4

    move-wide/from16 v31, v8

    move-object/from16 v20, v13

    const/4 v8, 0x0

    const/16 v24, 0x1

    new-instance v18, Lv0/b;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v12, Lv0/d;->a:Lx2/f;

    iget-boolean v3, v12, Lv0/d;->b:Z

    move-object/from16 v22, v0

    move/from16 v23, v3

    move-object/from16 v21, v29

    invoke-direct/range {v18 .. v23}, Lv0/b;-><init>(LI0/q;Landroidx/media3/common/Format;Lk0/z;Lf1/k;Z)V

    goto/16 :goto_8

    :goto_17
    iput-object v0, v1, Lv0/o;->R:Lv0/b;

    iget-object v0, v0, Lv0/b;->a:LI0/q;

    instance-of v3, v0, Lo1/e;

    if-nez v3, :cond_26

    instance-of v3, v0, Lo1/a;

    if-nez v3, :cond_26

    instance-of v3, v0, Lo1/c;

    if-nez v3, :cond_26

    instance-of v0, v0, Lb1/d;

    if-eqz v0, :cond_25

    goto :goto_18

    :cond_25
    move v3, v8

    goto :goto_19

    :cond_26
    :goto_18
    move/from16 v3, v24

    :goto_19
    if-eqz v3, :cond_28

    iget-object v0, v1, Lv0/o;->S:Lv0/w;

    cmp-long v3, v5, v16

    if-eqz v3, :cond_27

    invoke-virtual {v10, v5, v6}, Lk0/z;->b(J)J

    move-result-wide v3

    goto :goto_1a

    :cond_27
    move-wide/from16 v3, v31

    :goto_1a
    iget-wide v5, v0, Lv0/w;->k0:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_29

    iput-wide v3, v0, Lv0/w;->k0:J

    iget-object v0, v0, Lv0/w;->K:[Lv0/v;

    array-length v5, v0

    move v6, v8

    :goto_1b
    if-ge v6, v5, :cond_29

    aget-object v7, v0, v6

    invoke-virtual {v7, v3, v4}, Landroidx/media3/exoplayer/source/e0;->setSampleOffsetUs(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_28
    iget-object v0, v1, Lv0/o;->S:Lv0/w;

    iget-wide v3, v0, Lv0/w;->k0:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_29

    iput-wide v5, v0, Lv0/w;->k0:J

    iget-object v0, v0, Lv0/w;->K:[Lv0/v;

    array-length v3, v0

    move v4, v8

    :goto_1c
    if-ge v4, v3, :cond_29

    aget-object v7, v0, v4

    invoke-virtual {v7, v5, v6}, Landroidx/media3/exoplayer/source/e0;->setSampleOffsetUs(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_29
    iget-object v0, v1, Lv0/o;->S:Lv0/w;

    iget-object v0, v0, Lv0/w;->M:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, v1, Lv0/o;->R:Lv0/b;

    iget-object v3, v1, Lv0/o;->S:Lv0/w;

    iget-object v0, v0, Lv0/b;->a:LI0/q;

    invoke-interface {v0, v3}, LI0/q;->k(LI0/s;)V

    goto :goto_1d

    :cond_2a
    move v8, v4

    :goto_1d
    iget-object v0, v1, Lv0/o;->S:Lv0/w;

    iget-object v3, v0, Lv0/w;->l0:Landroidx/media3/common/DrmInitData;

    sget v4, Lk0/C;->a:I

    iget-object v4, v1, Lv0/o;->M:Landroidx/media3/common/DrmInitData;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    iput-object v4, v0, Lv0/w;->l0:Landroidx/media3/common/DrmInitData;

    :goto_1e
    iget-object v3, v0, Lv0/w;->K:[Lv0/v;

    array-length v5, v3

    if-ge v8, v5, :cond_2c

    iget-object v5, v0, Lv0/w;->d0:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_2b

    aget-object v3, v3, v8

    iput-object v4, v3, Lv0/v;->b:Landroidx/media3/common/DrmInitData;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->invalidateUpstreamFormatAdjustment()V

    :cond_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_2c
    return-object v2
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv0/o;->V:Z

    return-void
.end method
