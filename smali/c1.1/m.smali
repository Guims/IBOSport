.class public final Lc1/m;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;
.implements LI0/F;


# instance fields
.field public A:[Lc1/l;

.field public B:[[J

.field public C:I

.field public D:J

.field public E:I

.field public F:LX0/a;

.field public final a:Lf1/k;

.field public final b:I

.field public final c:Lk0/u;

.field public final d:Lk0/u;

.field public final e:Lk0/u;

.field public final f:Lk0/u;

.field public final g:Ljava/util/ArrayDeque;

.field public final h:Lc1/o;

.field public final i:Ljava/util/ArrayList;

.field public j:Lp3/Y;

.field public k:I

.field public l:I

.field public m:J

.field public n:I

.field public o:Lk0/u;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:J

.field public x:Z

.field public y:J

.field public z:LI0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lf1/k;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/m;->a:Lf1/k;

    iput p2, p0, Lc1/m;->b:I

    sget-object p1, Lp3/H;->q:Lp3/F;

    sget-object p1, Lp3/Y;->t:Lp3/Y;

    iput-object p1, p0, Lc1/m;->j:Lp3/Y;

    and-int/lit8 p1, p2, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lc1/m;->k:I

    new-instance p1, Lc1/o;

    invoke-direct {p1}, Lc1/o;-><init>()V

    iput-object p1, p0, Lc1/m;->h:Lc1/o;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc1/m;->i:Ljava/util/ArrayList;

    new-instance p1, Lk0/u;

    const/16 v1, 0x10

    invoke-direct {p1, v1}, Lk0/u;-><init>(I)V

    iput-object p1, p0, Lc1/m;->f:Lk0/u;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lc1/m;->g:Ljava/util/ArrayDeque;

    new-instance p1, Lk0/u;

    sget-object v1, Ll0/n;->a:[B

    invoke-direct {p1, v1}, Lk0/u;-><init>([B)V

    iput-object p1, p0, Lc1/m;->c:Lk0/u;

    new-instance p1, Lk0/u;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Lk0/u;-><init>(I)V

    iput-object p1, p0, Lc1/m;->d:Lk0/u;

    new-instance p1, Lk0/u;

    invoke-direct {p1}, Lk0/u;-><init>()V

    iput-object p1, p0, Lc1/m;->e:Lk0/u;

    const/4 p1, -0x1

    iput p1, p0, Lc1/m;->p:I

    sget-object p1, LI0/s;->f:Lu2/j;

    iput-object p1, p0, Lc1/m;->z:LI0/s;

    new-array p1, v0, [Lc1/l;

    iput-object p1, p0, Lc1/m;->A:[Lc1/l;

    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lc1/m;->t:Z

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 3

    iget v0, p0, Lc1/m;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1, v2, v0}, Lc1/p;->e(LI0/r;ZZ)LI0/J;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lp3/H;->q:Lp3/F;

    sget-object v0, Lp3/Y;->t:Lp3/Y;

    :goto_1
    iput-object v0, p0, Lc1/m;->j:Lp3/Y;

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    :cond_0
    iget v3, v1, Lc1/m;->k:I

    iget-object v5, v1, Lc1/m;->g:Ljava/util/ArrayDeque;

    iget v6, v1, Lc1/m;->b:I

    iget-object v8, v1, Lc1/m;->e:Lk0/u;

    const/4 v11, 0x0

    const/4 v15, 0x4

    const-wide/16 v16, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_45

    const-wide/32 v19, 0x40000

    if-eq v3, v4, :cond_36

    const-wide/16 v21, 0x8

    if-eq v3, v10, :cond_19

    const/4 v5, 0x3

    if-ne v3, v5, :cond_18

    iget-object v3, v1, Lc1/m;->h:Lc1/o;

    iget-object v6, v3, Lc1/o;->a:Ljava/util/ArrayList;

    iget v8, v3, Lc1/o;->b:I

    if-eqz v8, :cond_14

    if-eq v8, v4, :cond_12

    const/16 v7, 0xb01

    const/16 v12, 0xb00

    const/16 v4, 0x890

    if-eq v8, v10, :cond_d

    if-ne v8, v5, :cond_c

    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v16

    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v18

    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    iget v3, v3, Lc1/o;->c:I

    int-to-long v13, v3

    sub-long v13, v18, v13

    long-to-int v3, v13

    new-instance v13, Lk0/u;

    invoke-direct {v13, v3}, Lk0/u;-><init>(I)V

    iget-object v14, v13, Lk0/u;->a:[B

    invoke-interface {v0, v14, v9, v3}, LI0/r;->readFully([BII)V

    move v0, v9

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc1/n;

    iget-wide v8, v3, Lc1/n;->a:J

    sub-long v8, v8, v16

    long-to-int v8, v8

    invoke-virtual {v13, v8}, Lk0/u;->G(I)V

    invoke-virtual {v13, v15}, Lk0/u;->H(I)V

    invoke-virtual {v13}, Lk0/u;->i()I

    move-result v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v8, v9}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v19

    move/from16 v28, v15

    sparse-switch v19, :sswitch_data_0

    :goto_1
    const/4 v14, -0x1

    goto :goto_3

    :sswitch_0
    const-string v15, "Super_SlowMotion_BGM"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v14, v28

    goto :goto_3

    :sswitch_1
    const-string v15, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    move v14, v5

    goto :goto_3

    :sswitch_2
    const-string v15, "Super_SlowMotion_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    move v14, v10

    goto :goto_3

    :sswitch_3
    const-string v15, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_2

    :cond_4
    const/4 v14, 0x1

    goto :goto_3

    :sswitch_4
    const-string v15, "SlowMotion_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    :goto_3
    packed-switch v14, :pswitch_data_0

    const-string v0, "Invalid SEF name"

    invoke-static {v0, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_0
    move v14, v7

    goto :goto_4

    :pswitch_1
    const/16 v14, 0xb04

    goto :goto_4

    :pswitch_2
    move v14, v12

    goto :goto_4

    :pswitch_3
    const/16 v14, 0xb03

    goto :goto_4

    :pswitch_4
    move v14, v4

    :goto_4
    iget v3, v3, Lc1/n;->b:I

    add-int/lit8 v8, v8, 0x8

    sub-int/2addr v3, v8

    if-eq v14, v4, :cond_7

    if-eq v14, v12, :cond_a

    if-eq v14, v7, :cond_a

    const/16 v3, 0xb03

    if-eq v14, v3, :cond_a

    const/16 v8, 0xb04

    if-ne v14, v8, :cond_6

    goto/16 :goto_6

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v3, v9}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lc1/o;->e:LA/d;

    invoke-virtual {v9, v3}, LA/d;->q(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_9

    sget-object v14, Lc1/o;->d:LA/d;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v14, v8}, LA/d;->q(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v5, :cond_8

    const/4 v14, 0x0

    :try_start_0
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    const/4 v14, 0x1

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v33

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v27, 0x1

    add-int/lit8 v8, v8, -0x1

    shl-int v30, v27, v8

    new-instance v29, LX0/b;

    invoke-direct/range {v29 .. v34}, LX0/b;-><init>(IJJ)V

    move-object/from16 v8, v29

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {v11, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v11, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    new-instance v3, LX0/c;

    invoke-direct {v3, v15}, LX0/c;-><init>(Ljava/util/ArrayList;)V

    iget-object v8, v1, Lc1/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v15, v28

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    const-wide/16 v8, 0x0

    iput-wide v8, v2, LI0/D;->a:J

    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_c

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_d
    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v8

    iget v11, v3, Lc1/o;->c:I

    add-int/lit8 v11, v11, -0x14

    new-instance v13, Lk0/u;

    invoke-direct {v13, v11}, Lk0/u;-><init>(I)V

    iget-object v14, v13, Lk0/u;->a:[B

    const/4 v15, 0x0

    invoke-interface {v0, v14, v15, v11}, LI0/r;->readFully([BII)V

    const/4 v0, 0x0

    :goto_8
    div-int/lit8 v15, v11, 0xc

    if-ge v0, v15, :cond_10

    invoke-virtual {v13, v10}, Lk0/u;->H(I)V

    invoke-virtual {v13}, Lk0/u;->k()S

    move-result v15

    if-eq v15, v4, :cond_e

    if-eq v15, v12, :cond_e

    if-eq v15, v7, :cond_e

    const/16 v4, 0xb03

    if-eq v15, v4, :cond_e

    const/16 v4, 0xb04

    if-eq v15, v4, :cond_f

    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Lk0/u;->H(I)V

    move-wide/from16 v18, v8

    move-object/from16 v21, v13

    goto :goto_9

    :cond_e
    const/16 v4, 0xb04

    :cond_f
    iget v15, v3, Lc1/o;->c:I

    move-wide/from16 v18, v8

    int-to-long v7, v15

    sub-long v8, v18, v7

    invoke-virtual {v13}, Lk0/u;->i()I

    move-result v7

    move-object/from16 v21, v13

    int-to-long v12, v7

    sub-long/2addr v8, v12

    invoke-virtual/range {v21 .. v21}, Lk0/u;->i()I

    move-result v7

    new-instance v12, Lc1/n;

    invoke-direct {v12, v7, v8, v9}, Lc1/n;-><init>(IJ)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v8, v18

    move-object/from16 v13, v21

    const/16 v4, 0x890

    const/16 v7, 0xb01

    const/16 v12, 0xb00

    goto :goto_8

    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/16 v8, 0x0

    iput-wide v8, v2, LI0/D;->a:J

    const/4 v14, 0x0

    goto :goto_7

    :cond_11
    iput v5, v3, Lc1/o;->b:I

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/n;

    iget-wide v3, v0, Lc1/n;->a:J

    iput-wide v3, v2, LI0/D;->a:J

    goto/16 :goto_7

    :cond_12
    move v14, v9

    new-instance v4, Lk0/u;

    const/16 v15, 0x8

    invoke-direct {v4, v15}, Lk0/u;-><init>(I)V

    iget-object v5, v4, Lk0/u;->a:[B

    invoke-interface {v0, v5, v14, v15}, LI0/r;->readFully([BII)V

    invoke-virtual {v4}, Lk0/u;->i()I

    move-result v5

    add-int/2addr v5, v15

    iput v5, v3, Lc1/o;->c:I

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_13

    const-wide/16 v8, 0x0

    iput-wide v8, v2, LI0/D;->a:J

    goto/16 :goto_7

    :cond_13
    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v4

    iget v0, v3, Lc1/o;->c:I

    add-int/lit8 v0, v0, -0xc

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, v2, LI0/D;->a:J

    iput v10, v3, Lc1/o;->b:I

    goto/16 :goto_7

    :cond_14
    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v4

    cmp-long v0, v4, v16

    if-eqz v0, :cond_16

    cmp-long v0, v4, v21

    if-gez v0, :cond_15

    goto :goto_a

    :cond_15
    sub-long v4, v4, v21

    goto :goto_b

    :cond_16
    :goto_a
    const-wide/16 v4, 0x0

    :goto_b
    iput-wide v4, v2, LI0/D;->a:J

    const/4 v0, 0x1

    iput v0, v3, Lc1/o;->b:I

    :goto_c
    iget-wide v2, v2, LI0/D;->a:J

    const-wide/16 v25, 0x0

    cmp-long v2, v2, v25

    if-nez v2, :cond_17

    const/4 v14, 0x0

    iput v14, v1, Lc1/m;->k:I

    iput v14, v1, Lc1/m;->n:I

    return v0

    :cond_17
    move v9, v0

    goto/16 :goto_1e

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_19
    move/from16 v28, v15

    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v3

    iget v5, v1, Lc1/m;->p:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_24

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v12, 0x1

    const/4 v15, 0x1

    const-wide v16, 0x7fffffffffffffffL

    const-wide v29, 0x7fffffffffffffffL

    const-wide v31, 0x7fffffffffffffffL

    const-wide v33, 0x7fffffffffffffffL

    :goto_d
    iget-object v13, v1, Lc1/m;->A:[Lc1/l;

    array-length v14, v13

    if-ge v5, v14, :cond_21

    aget-object v13, v13, v5

    iget v14, v13, Lc1/l;->e:I

    iget-object v13, v13, Lc1/l;->b:Lc1/t;

    move/from16 v35, v10

    iget v10, v13, Lc1/t;->b:I

    if-ne v14, v10, :cond_1a

    goto :goto_10

    :cond_1a
    iget-object v10, v13, Lc1/t;->c:[J

    aget-wide v36, v10, v14

    iget-object v10, v1, Lc1/m;->B:[[J

    sget v13, Lk0/C;->a:I

    aget-object v10, v10, v5

    aget-wide v13, v10, v14

    sub-long v36, v36, v3

    const-wide/16 v25, 0x0

    cmp-long v10, v36, v25

    if-ltz v10, :cond_1c

    cmp-long v10, v36, v19

    if-ltz v10, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v10, 0x0

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v10, 0x1

    :goto_f
    if-nez v10, :cond_1d

    if-nez v12, :cond_1e

    :cond_1d
    if-ne v10, v12, :cond_1f

    cmp-long v24, v36, v33

    if-gez v24, :cond_1f

    :cond_1e
    move v9, v5

    move v12, v10

    move-wide/from16 v31, v13

    move-wide/from16 v33, v36

    :cond_1f
    cmp-long v24, v13, v29

    if-gez v24, :cond_20

    move v7, v5

    move v15, v10

    move-wide/from16 v29, v13

    :cond_20
    :goto_10
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v35

    goto :goto_d

    :cond_21
    move/from16 v35, v10

    cmp-long v5, v29, v16

    if-eqz v5, :cond_22

    if-eqz v15, :cond_22

    const-wide/32 v12, 0xa00000

    add-long v29, v29, v12

    cmp-long v5, v31, v29

    if-gez v5, :cond_23

    :cond_22
    move v7, v9

    :cond_23
    iput v7, v1, Lc1/m;->p:I

    const/4 v5, -0x1

    if-ne v7, v5, :cond_25

    move/from16 v23, v5

    goto/16 :goto_27

    :cond_24
    move/from16 v35, v10

    :cond_25
    iget-object v5, v1, Lc1/m;->A:[Lc1/l;

    iget v7, v1, Lc1/m;->p:I

    aget-object v5, v5, v7

    iget-object v7, v5, Lc1/l;->c:LI0/L;

    iget-object v9, v5, Lc1/l;->a:Lc1/q;

    iget-object v10, v5, Lc1/l;->b:Lc1/t;

    iget v12, v5, Lc1/l;->e:I

    iget-object v13, v10, Lc1/t;->c:[J

    aget-wide v14, v13, v12

    move/from16 v16, v12

    iget-wide v11, v1, Lc1/m;->y:J

    add-long/2addr v14, v11

    iget-object v11, v10, Lc1/t;->d:[I

    aget v11, v11, v16

    iget-object v12, v5, Lc1/l;->d:LI0/M;

    sub-long v3, v14, v3

    iget v13, v1, Lc1/m;->q:I

    move-wide/from16 v29, v3

    int-to-long v3, v13

    add-long v3, v29, v3

    const-wide/16 v25, 0x0

    cmp-long v13, v3, v25

    if-ltz v13, :cond_35

    cmp-long v13, v3, v19

    if-ltz v13, :cond_26

    goto/16 :goto_17

    :cond_26
    iget v2, v9, Lc1/q;->h:I

    iget-object v15, v9, Lc1/q;->g:Landroidx/media3/common/Format;

    const/4 v14, 0x1

    if-ne v2, v14, :cond_27

    add-long v3, v3, v21

    add-int/lit8 v11, v11, -0x8

    :cond_27
    long-to-int v2, v3

    invoke-interface {v0, v2}, LI0/r;->n(I)V

    iget-object v2, v15, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/avc"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x1

    if-nez v2, :cond_28

    iput-boolean v14, v1, Lc1/m;->t:Z

    :cond_28
    iget v2, v9, Lc1/q;->k:I

    if-eqz v2, :cond_2d

    iget-object v3, v1, Lc1/m;->d:Lk0/u;

    iget-object v4, v3, Lk0/u;->a:[B

    const/16 v18, 0x0

    aput-byte v18, v4, v18

    aput-byte v18, v4, v14

    aput-byte v18, v4, v35

    add-int/lit8 v8, v2, 0x1

    rsub-int/lit8 v15, v2, 0x4

    :goto_11
    iget v2, v1, Lc1/m;->r:I

    if-ge v2, v11, :cond_2c

    iget v2, v1, Lc1/m;->s:I

    if-nez v2, :cond_2b

    invoke-interface {v0, v4, v15, v8}, LI0/r;->readFully([BII)V

    iget v2, v1, Lc1/m;->q:I

    add-int/2addr v2, v8

    iput v2, v1, Lc1/m;->q:I

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lk0/u;->G(I)V

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v2

    const/4 v9, 0x1

    if-lt v2, v9, :cond_2a

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lc1/m;->s:I

    iget-object v2, v1, Lc1/m;->c:Lk0/u;

    invoke-virtual {v2, v14}, Lk0/u;->G(I)V

    move/from16 v13, v28

    invoke-interface {v7, v2, v13}, LI0/L;->sampleData(Lk0/u;I)V

    invoke-interface {v7, v3, v9}, LI0/L;->sampleData(Lk0/u;I)V

    iget v2, v1, Lc1/m;->r:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v1, Lc1/m;->r:I

    add-int/2addr v11, v15

    iget-boolean v2, v1, Lc1/m;->t:Z

    if-nez v2, :cond_29

    aget-byte v2, v4, v13

    invoke-static {v2}, Ll0/n;->c(B)Z

    move-result v2

    if-eqz v2, :cond_29

    iput-boolean v9, v1, Lc1/m;->t:Z

    :cond_29
    :goto_12
    const/16 v28, 0x4

    goto :goto_11

    :cond_2a
    const-string v0, "Invalid NAL length"

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2b
    const/4 v14, 0x0

    invoke-interface {v7, v0, v2, v14}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    iget v9, v1, Lc1/m;->q:I

    add-int/2addr v9, v2

    iput v9, v1, Lc1/m;->q:I

    iget v9, v1, Lc1/m;->r:I

    add-int/2addr v9, v2

    iput v9, v1, Lc1/m;->r:I

    iget v9, v1, Lc1/m;->s:I

    sub-int/2addr v9, v2

    iput v9, v1, Lc1/m;->s:I

    goto :goto_12

    :cond_2c
    move/from16 v40, v11

    goto :goto_14

    :cond_2d
    const-string v2, "audio/ac4"

    iget-object v3, v15, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, v1, Lc1/m;->r:I

    if-nez v2, :cond_2e

    invoke-static {v8, v11}, LI0/e;->a(Lk0/u;I)V

    const/4 v2, 0x7

    invoke-interface {v7, v8, v2}, LI0/L;->sampleData(Lk0/u;I)V

    iget v3, v1, Lc1/m;->r:I

    add-int/2addr v3, v2

    iput v3, v1, Lc1/m;->r:I

    :cond_2e
    add-int/lit8 v11, v11, 0x7

    goto :goto_13

    :cond_2f
    if-eqz v12, :cond_30

    invoke-virtual {v12, v0}, LI0/M;->c(LI0/r;)V

    :cond_30
    :goto_13
    iget v2, v1, Lc1/m;->r:I

    if-ge v2, v11, :cond_2c

    sub-int v2, v11, v2

    const/4 v14, 0x0

    invoke-interface {v7, v0, v2, v14}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    iget v3, v1, Lc1/m;->q:I

    add-int/2addr v3, v2

    iput v3, v1, Lc1/m;->q:I

    iget v3, v1, Lc1/m;->r:I

    add-int/2addr v3, v2

    iput v3, v1, Lc1/m;->r:I

    iget v3, v1, Lc1/m;->s:I

    sub-int/2addr v3, v2

    iput v3, v1, Lc1/m;->s:I

    goto :goto_13

    :goto_14
    iget-object v0, v10, Lc1/t;->f:[J

    aget-wide v37, v0, v16

    iget-object v0, v10, Lc1/t;->g:[I

    aget v0, v0, v16

    iget-boolean v2, v1, Lc1/m;->t:Z

    if-nez v2, :cond_31

    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    :cond_31
    move/from16 v39, v0

    if-eqz v12, :cond_32

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v36, v12

    move/from16 v41, v40

    move/from16 v40, v39

    move-wide/from16 v38, v37

    move-object/from16 v37, v7

    invoke-virtual/range {v36 .. v43}, LI0/M;->b(LI0/L;JIIILI0/K;)V

    move-object/from16 v2, v36

    move-object/from16 v0, v37

    const/16 v27, 0x1

    add-int/lit8 v12, v16, 0x1

    iget v3, v10, Lc1/t;->b:I

    if-ne v12, v3, :cond_33

    const/4 v13, 0x0

    invoke-virtual {v2, v0, v13}, LI0/M;->a(LI0/L;LI0/K;)V

    goto :goto_15

    :cond_32
    move-object v0, v7

    const/16 v27, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v42}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    :cond_33
    :goto_15
    iget v0, v5, Lc1/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lc1/l;->e:I

    const/4 v5, -0x1

    iput v5, v1, Lc1/m;->p:I

    const/4 v14, 0x0

    iput v14, v1, Lc1/m;->q:I

    iput v14, v1, Lc1/m;->r:I

    iput v14, v1, Lc1/m;->s:I

    and-int/lit8 v0, v6, 0x20

    if-nez v0, :cond_34

    const/4 v4, 0x1

    goto :goto_16

    :cond_34
    move v4, v14

    :goto_16
    iput-boolean v4, v1, Lc1/m;->t:Z

    return v14

    :cond_35
    :goto_17
    iput-wide v14, v2, LI0/D;->a:J

    const/16 v27, 0x1

    return v27

    :cond_36
    move/from16 v35, v10

    iget-wide v3, v1, Lc1/m;->m:J

    iget v6, v1, Lc1/m;->n:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v3

    iget-object v8, v1, Lc1/m;->o:Lk0/u;

    if-eqz v8, :cond_3f

    iget-object v9, v8, Lk0/u;->a:[B

    iget v10, v1, Lc1/m;->n:I

    long-to-int v3, v3

    invoke-interface {v0, v9, v10, v3}, LI0/r;->readFully([BII)V

    iget v3, v1, Lc1/m;->l:I

    const v4, 0x66747970

    if-ne v3, v4, :cond_3e

    const/4 v9, 0x1

    iput-boolean v9, v1, Lc1/m;->u:Z

    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Lk0/u;->G(I)V

    invoke-virtual {v8}, Lk0/u;->g()I

    move-result v3

    const v4, 0x71742020

    const v5, 0x68656963

    if-eq v3, v5, :cond_38

    if-eq v3, v4, :cond_37

    const/4 v3, 0x0

    goto :goto_18

    :cond_37
    const/4 v3, 0x1

    goto :goto_18

    :cond_38
    move/from16 v3, v35

    :goto_18
    if-eqz v3, :cond_39

    goto :goto_1a

    :cond_39
    const/4 v13, 0x4

    invoke-virtual {v8, v13}, Lk0/u;->H(I)V

    :cond_3a
    invoke-virtual {v8}, Lk0/u;->a()I

    move-result v3

    if-lez v3, :cond_3d

    invoke-virtual {v8}, Lk0/u;->g()I

    move-result v3

    if-eq v3, v5, :cond_3c

    if-eq v3, v4, :cond_3b

    const/4 v3, 0x0

    goto :goto_19

    :cond_3b
    const/4 v3, 0x1

    goto :goto_19

    :cond_3c
    move/from16 v3, v35

    :goto_19
    if-eqz v3, :cond_3a

    goto :goto_1a

    :cond_3d
    const/4 v3, 0x0

    :goto_1a
    iput v3, v1, Lc1/m;->E:I

    goto :goto_1b

    :cond_3e
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/b;

    new-instance v4, Ll0/c;

    iget v5, v1, Lc1/m;->l:I

    invoke-direct {v4, v8, v5}, Ll0/c;-><init>(Lk0/u;I)V

    iget-object v3, v3, Ll0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3f
    iget-boolean v5, v1, Lc1/m;->u:Z

    if-nez v5, :cond_40

    iget v5, v1, Lc1/m;->l:I

    const v8, 0x6d646174

    if-ne v5, v8, :cond_40

    const/4 v9, 0x1

    iput v9, v1, Lc1/m;->E:I

    :cond_40
    cmp-long v5, v3, v19

    if-gez v5, :cond_42

    long-to-int v3, v3

    invoke-interface {v0, v3}, LI0/r;->n(I)V

    :cond_41
    :goto_1b
    const/4 v3, 0x0

    goto :goto_1c

    :cond_42
    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, LI0/D;->a:J

    const/4 v3, 0x1

    :goto_1c
    invoke-virtual {v1, v6, v7}, Lc1/m;->m(J)V

    iget-boolean v4, v1, Lc1/m;->v:Z

    if-eqz v4, :cond_43

    const/4 v9, 0x1

    iput-boolean v9, v1, Lc1/m;->x:Z

    iget-wide v3, v1, Lc1/m;->w:J

    iput-wide v3, v2, LI0/D;->a:J

    const/4 v14, 0x0

    iput-boolean v14, v1, Lc1/m;->v:Z

    const/4 v3, 0x1

    :cond_43
    if-eqz v3, :cond_44

    iget v3, v1, Lc1/m;->k:I

    move/from16 v4, v35

    if-eq v3, v4, :cond_44

    const/4 v9, 0x1

    goto :goto_1d

    :cond_44
    const/4 v9, 0x0

    :goto_1d
    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_1e
    return v9

    :cond_45
    move v9, v4

    iget v3, v1, Lc1/m;->n:I

    iget-object v4, v1, Lc1/m;->f:Lk0/u;

    if-nez v3, :cond_49

    iget-object v3, v4, Lk0/u;->a:[B

    const/4 v14, 0x0

    const/16 v15, 0x8

    invoke-interface {v0, v3, v14, v15, v9}, LI0/r;->b([BIIZ)Z

    move-result v3

    if-nez v3, :cond_48

    iget v3, v1, Lc1/m;->E:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_47

    and-int/lit8 v3, v6, 0x2

    if-eqz v3, :cond_47

    iget-object v3, v1, Lc1/m;->z:LI0/s;

    const/4 v4, 0x4

    invoke-interface {v3, v14, v4}, LI0/s;->track(II)LI0/L;

    move-result-object v3

    iget-object v4, v1, Lc1/m;->F:LX0/a;

    if-nez v4, :cond_46

    const/4 v11, 0x0

    goto :goto_1f

    :cond_46
    new-instance v11, Landroidx/media3/common/Metadata;

    iget-object v4, v1, Lc1/m;->F:LX0/a;

    const/4 v9, 0x1

    new-array v5, v9, [Landroidx/media3/common/Metadata$Entry;

    aput-object v4, v5, v14

    invoke-direct {v11, v5}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_1f
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v4, v11}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    invoke-interface {v3, v4}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iget-object v3, v1, Lc1/m;->z:LI0/s;

    invoke-interface {v3}, LI0/s;->endTracks()V

    iget-object v3, v1, Lc1/m;->z:LI0/s;

    new-instance v4, LI0/v;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v5, v6}, LI0/v;-><init>(J)V

    invoke-interface {v3, v4}, LI0/s;->seekMap(LI0/F;)V

    :cond_47
    const/4 v9, 0x0

    goto/16 :goto_26

    :cond_48
    const/16 v15, 0x8

    iput v15, v1, Lc1/m;->n:I

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lk0/u;->G(I)V

    invoke-virtual {v4}, Lk0/u;->w()J

    move-result-wide v6

    iput-wide v6, v1, Lc1/m;->m:J

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v3

    iput v3, v1, Lc1/m;->l:I

    :cond_49
    iget-wide v6, v1, Lc1/m;->m:J

    const-wide/16 v9, 0x1

    cmp-long v3, v6, v9

    if-nez v3, :cond_4a

    iget-object v3, v4, Lk0/u;->a:[B

    const/16 v15, 0x8

    invoke-interface {v0, v3, v15, v15}, LI0/r;->readFully([BII)V

    iget v3, v1, Lc1/m;->n:I

    add-int/2addr v3, v15

    iput v3, v1, Lc1/m;->n:I

    invoke-virtual {v4}, Lk0/u;->z()J

    move-result-wide v6

    iput-wide v6, v1, Lc1/m;->m:J

    goto :goto_20

    :cond_4a
    const-wide/16 v25, 0x0

    cmp-long v3, v6, v25

    if-nez v3, :cond_4c

    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v6

    cmp-long v3, v6, v16

    if-nez v3, :cond_4b

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/b;

    if-eqz v3, :cond_4b

    iget-wide v6, v3, Ll0/b;->r:J

    :cond_4b
    cmp-long v3, v6, v16

    if-eqz v3, :cond_4c

    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v9

    sub-long/2addr v6, v9

    iget v3, v1, Lc1/m;->n:I

    int-to-long v9, v3

    add-long/2addr v6, v9

    iput-wide v6, v1, Lc1/m;->m:J

    :cond_4c
    :goto_20
    iget-wide v6, v1, Lc1/m;->m:J

    iget v3, v1, Lc1/m;->n:I

    int-to-long v9, v3

    cmp-long v6, v6, v9

    if-ltz v6, :cond_57

    iget v6, v1, Lc1/m;->l:I

    const v7, 0x6d6f6f76

    const v9, 0x68646c72    # 4.3148E24f

    const v10, 0x6d657461

    if-eq v6, v7, :cond_4d

    const v7, 0x7472616b

    if-eq v6, v7, :cond_4d

    const v7, 0x6d646961

    if-eq v6, v7, :cond_4d

    const v7, 0x6d696e66

    if-eq v6, v7, :cond_4d

    const v7, 0x7374626c

    if-eq v6, v7, :cond_4d

    const v7, 0x65647473

    if-eq v6, v7, :cond_4d

    if-eq v6, v10, :cond_4d

    const v7, 0x65647664

    if-ne v6, v7, :cond_4e

    :cond_4d
    const/4 v3, 0x1

    goto/16 :goto_24

    :cond_4e
    const v5, 0x6d646864

    if-eq v6, v5, :cond_4f

    const v5, 0x6d766864

    if-eq v6, v5, :cond_4f

    if-eq v6, v9, :cond_4f

    const v5, 0x73747364

    if-eq v6, v5, :cond_4f

    const v5, 0x73747473

    if-eq v6, v5, :cond_4f

    const v5, 0x73747373

    if-eq v6, v5, :cond_4f

    const v5, 0x63747473

    if-eq v6, v5, :cond_4f

    const v5, 0x656c7374

    if-eq v6, v5, :cond_4f

    const v5, 0x73747363

    if-eq v6, v5, :cond_4f

    const v5, 0x7374737a

    if-eq v6, v5, :cond_4f

    const v5, 0x73747a32

    if-eq v6, v5, :cond_4f

    const v5, 0x7374636f

    if-eq v6, v5, :cond_4f

    const v5, 0x636f3634

    if-eq v6, v5, :cond_4f

    const v5, 0x746b6864

    if-eq v6, v5, :cond_4f

    const v5, 0x66747970

    if-eq v6, v5, :cond_4f

    const v5, 0x75647461

    if-eq v6, v5, :cond_4f

    const v5, 0x6b657973

    if-eq v6, v5, :cond_4f

    const v5, 0x696c7374

    if-ne v6, v5, :cond_50

    :cond_4f
    const/16 v15, 0x8

    goto :goto_21

    :cond_50
    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v3

    iget v5, v1, Lc1/m;->n:I

    int-to-long v5, v5

    sub-long v31, v3, v5

    iget v3, v1, Lc1/m;->l:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_51

    new-instance v28, LX0/a;

    add-long v35, v31, v5

    iget-wide v3, v1, Lc1/m;->m:J

    sub-long v37, v3, v5

    const-wide/16 v29, 0x0

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v28 .. v38}, LX0/a;-><init>(JJJJJ)V

    move-object/from16 v3, v28

    iput-object v3, v1, Lc1/m;->F:LX0/a;

    :cond_51
    const/4 v13, 0x0

    iput-object v13, v1, Lc1/m;->o:Lk0/u;

    const/4 v9, 0x1

    iput v9, v1, Lc1/m;->k:I

    goto/16 :goto_25

    :goto_21
    if-ne v3, v15, :cond_52

    const/4 v3, 0x1

    goto :goto_22

    :cond_52
    const/4 v3, 0x0

    :goto_22
    invoke-static {v3}, Lk0/c;->j(Z)V

    iget-wide v5, v1, Lc1/m;->m:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v5, v7

    if-gtz v3, :cond_53

    const/4 v3, 0x1

    goto :goto_23

    :cond_53
    const/4 v3, 0x0

    :goto_23
    invoke-static {v3}, Lk0/c;->j(Z)V

    new-instance v3, Lk0/u;

    iget-wide v5, v1, Lc1/m;->m:J

    long-to-int v5, v5

    invoke-direct {v3, v5}, Lk0/u;-><init>(I)V

    iget-object v4, v4, Lk0/u;->a:[B

    iget-object v5, v3, Lk0/u;->a:[B

    const/4 v14, 0x0

    const/16 v15, 0x8

    invoke-static {v4, v14, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v1, Lc1/m;->o:Lk0/u;

    const/4 v3, 0x1

    iput v3, v1, Lc1/m;->k:I

    goto :goto_25

    :goto_24
    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v6

    iget-wide v11, v1, Lc1/m;->m:J

    add-long/2addr v6, v11

    iget v4, v1, Lc1/m;->n:I

    int-to-long v3, v4

    sub-long/2addr v6, v3

    cmp-long v3, v11, v3

    if-eqz v3, :cond_55

    iget v3, v1, Lc1/m;->l:I

    if-ne v3, v10, :cond_55

    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Lk0/u;->D(I)V

    iget-object v3, v8, Lk0/u;->a:[B

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14, v15}, LI0/r;->o([BII)V

    sget-object v3, Lc1/d;->a:[B

    iget v3, v8, Lk0/u;->b:I

    const/4 v13, 0x4

    invoke-virtual {v8, v13}, Lk0/u;->H(I)V

    invoke-virtual {v8}, Lk0/u;->g()I

    move-result v4

    if-eq v4, v9, :cond_54

    add-int/lit8 v3, v3, 0x4

    :cond_54
    invoke-virtual {v8, v3}, Lk0/u;->G(I)V

    iget v3, v8, Lk0/u;->b:I

    invoke-interface {v0, v3}, LI0/r;->n(I)V

    invoke-interface {v0}, LI0/r;->j()V

    :cond_55
    new-instance v3, Ll0/b;

    iget v4, v1, Lc1/m;->l:I

    invoke-direct {v3, v4, v6, v7}, Ll0/b;-><init>(IJ)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v3, v1, Lc1/m;->m:J

    iget v5, v1, Lc1/m;->n:I

    int-to-long v8, v5

    cmp-long v3, v3, v8

    if-nez v3, :cond_56

    invoke-virtual {v1, v6, v7}, Lc1/m;->m(J)V

    goto :goto_25

    :cond_56
    const/4 v14, 0x0

    iput v14, v1, Lc1/m;->k:I

    iput v14, v1, Lc1/m;->n:I

    :goto_25
    const/4 v9, 0x1

    :goto_26
    if-nez v9, :cond_0

    const/16 v23, -0x1

    :goto_27
    return v23

    :cond_57
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(JJ)V
    .locals 8

    iget-object v0, p0, Lc1/m;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lc1/m;->n:I

    const/4 v1, -0x1

    iput v1, p0, Lc1/m;->p:I

    iput v0, p0, Lc1/m;->q:I

    iput v0, p0, Lc1/m;->r:I

    iput v0, p0, Lc1/m;->s:I

    iget v2, p0, Lc1/m;->b:I

    and-int/lit8 v2, v2, 0x20

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lc1/m;->t:Z

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-nez p1, :cond_2

    iget p1, p0, Lc1/m;->k:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    iput v0, p0, Lc1/m;->k:I

    iput v0, p0, Lc1/m;->n:I

    return-void

    :cond_1
    iget-object p1, p0, Lc1/m;->h:Lc1/o;

    iget-object p2, p1, Lc1/o;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iput v0, p1, Lc1/o;->b:I

    iget-object p1, p0, Lc1/m;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2
    iget-object p1, p0, Lc1/m;->A:[Lc1/l;

    array-length p2, p1

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_7

    aget-object v4, p1, v2

    iget-object v5, v4, Lc1/l;->b:Lc1/t;

    iget-object v6, v5, Lc1/t;->f:[J

    invoke-static {v6, p3, p4, v0}, Lk0/C;->e([JJZ)I

    move-result v6

    :goto_2
    if-ltz v6, :cond_4

    iget-object v7, v5, Lc1/t;->g:[I

    aget v7, v7, v6

    and-int/2addr v7, v3

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_3
    if-ne v6, v1, :cond_5

    invoke-virtual {v5, p3, p4}, Lc1/t;->a(J)I

    move-result v6

    :cond_5
    iput v6, v4, Lc1/l;->e:I

    iget-object v4, v4, Lc1/l;->d:LI0/M;

    if-eqz v4, :cond_6

    iput-boolean v0, v4, LI0/M;->b:Z

    iput v0, v4, LI0/M;->c:I

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lc1/m;->j:Lp3/Y;

    return-object v0
.end method

.method public final h(J)LI0/E;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lc1/m;->l(IJ)LI0/E;

    move-result-object p1

    return-object p1
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lc1/m;->D:J

    return-wide v0
.end method

.method public final k(LI0/s;)V
    .locals 2

    iget v0, p0, Lc1/m;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, LJ/l;

    iget-object v1, p0, Lc1/m;->a:Lf1/k;

    invoke-direct {v0, p1, v1}, LJ/l;-><init>(LI0/s;Lf1/k;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lc1/m;->z:LI0/s;

    return-void
.end method

.method public final l(IJ)LI0/E;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lc1/m;->A:[Lc1/l;

    array-length v5, v4

    sget-object v6, LI0/G;->c:LI0/G;

    if-nez v5, :cond_0

    new-instance v1, LI0/E;

    invoke-direct {v1, v6, v6}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object v1

    :cond_0
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    iget v7, v0, Lc1/m;->C:I

    :goto_0
    const/4 v8, 0x0

    const-wide/16 v11, -0x1

    if-eq v7, v5, :cond_7

    aget-object v4, v4, v7

    iget-object v4, v4, Lc1/l;->b:Lc1/t;

    iget-object v7, v4, Lc1/t;->f:[J

    invoke-static {v7, v2, v3, v8}, Lk0/C;->e([JJZ)I

    move-result v13

    :goto_1
    if-ltz v13, :cond_3

    iget-object v14, v4, Lc1/t;->g:[I

    aget v14, v14, v13

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_3
    move v13, v5

    :goto_2
    if-ne v13, v5, :cond_4

    invoke-virtual {v4, v2, v3}, Lc1/t;->a(J)I

    move-result v13

    :cond_4
    iget-object v14, v4, Lc1/t;->c:[J

    if-ne v13, v5, :cond_5

    new-instance v1, LI0/E;

    invoke-direct {v1, v6, v6}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object v1

    :cond_5
    aget-wide v15, v7, v13

    aget-wide v17, v14, v13

    cmp-long v6, v15, v2

    if-gez v6, :cond_6

    iget v6, v4, Lc1/t;->b:I

    add-int/lit8 v6, v6, -0x1

    if-ge v13, v6, :cond_6

    invoke-virtual {v4, v2, v3}, Lc1/t;->a(J)I

    move-result v2

    if-eq v2, v5, :cond_6

    if-eq v2, v13, :cond_6

    aget-wide v3, v7, v2

    aget-wide v11, v14, v2

    goto :goto_3

    :cond_6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    move-wide v6, v3

    move-wide v2, v15

    goto :goto_4

    :cond_7
    const-wide v17, 0x7fffffffffffffffL

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    if-ne v1, v5, :cond_13

    move v1, v8

    move-wide/from16 v13, v17

    :goto_5
    iget-object v4, v0, Lc1/m;->A:[Lc1/l;

    array-length v15, v4

    if-ge v1, v15, :cond_12

    iget v15, v0, Lc1/m;->C:I

    if-eq v1, v15, :cond_11

    aget-object v4, v4, v1

    iget-object v4, v4, Lc1/l;->b:Lc1/t;

    iget-object v15, v4, Lc1/t;->c:[J

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v9, v4, Lc1/t;->g:[I

    iget-object v10, v4, Lc1/t;->f:[J

    invoke-static {v10, v2, v3, v8}, Lk0/C;->e([JJZ)I

    move-result v16

    :goto_6
    if-ltz v16, :cond_9

    aget v17, v9, v16

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_8

    move/from16 v8, v16

    goto :goto_7

    :cond_8
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    :cond_9
    move v8, v5

    :goto_7
    if-ne v8, v5, :cond_a

    invoke-virtual {v4, v2, v3}, Lc1/t;->a(J)I

    move-result v8

    :cond_a
    if-ne v8, v5, :cond_b

    move-wide/from16 p2, v6

    goto :goto_8

    :cond_b
    move-wide/from16 p2, v6

    aget-wide v5, v15, v8

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :goto_8
    cmp-long v5, p2, v19

    if-eqz v5, :cond_10

    move-wide/from16 v5, p2

    const/4 v7, 0x0

    invoke-static {v10, v5, v6, v7}, Lk0/C;->e([JJZ)I

    move-result v8

    :goto_9
    if-ltz v8, :cond_d

    aget v10, v9, v8

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    :goto_a
    const/4 v9, -0x1

    goto :goto_b

    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_d
    const/4 v8, -0x1

    goto :goto_a

    :goto_b
    if-ne v8, v9, :cond_e

    invoke-virtual {v4, v5, v6}, Lc1/t;->a(J)I

    move-result v8

    :cond_e
    if-ne v8, v9, :cond_f

    goto :goto_c

    :cond_f
    aget-wide v7, v15, v8

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_c

    :cond_10
    move-wide/from16 v5, p2

    const/4 v9, -0x1

    goto :goto_c

    :cond_11
    move v9, v5

    move-wide v5, v6

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move-wide v6, v5

    move v5, v9

    const/4 v8, 0x0

    goto :goto_5

    :cond_12
    :goto_d
    move-wide v5, v6

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_e

    :cond_13
    move-wide/from16 v13, v17

    goto :goto_d

    :goto_e
    new-instance v1, LI0/G;

    invoke-direct {v1, v2, v3, v13, v14}, LI0/G;-><init>(JJ)V

    cmp-long v2, v5, v19

    if-nez v2, :cond_14

    new-instance v2, LI0/E;

    invoke-direct {v2, v1, v1}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object v2

    :cond_14
    new-instance v2, LI0/G;

    invoke-direct {v2, v5, v6, v11, v12}, LI0/G;-><init>(JJ)V

    new-instance v3, LI0/E;

    invoke-direct {v3, v1, v2}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object v3
.end method

.method public final m(J)V
    .locals 38

    move-object/from16 v1, p0

    :cond_0
    :goto_0
    iget-object v0, v1, Lc1/m;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6e

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/b;

    iget-wide v5, v2, Ll0/b;->r:J

    cmp-long v2, v5, p1

    if-nez v2, :cond_6e

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ll0/b;

    iget v2, v5, LU2/e;->q:I

    const v6, 0x6d6f6f76

    if-ne v2, v6, :cond_6d

    const v2, 0x6d657461

    invoke-virtual {v5, v2}, Ll0/b;->k(I)Ll0/b;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x1

    const v8, 0x68646c72    # 4.3148E24f

    const/4 v9, 0x4

    const/16 v10, 0x10

    const v11, 0x64617461

    const/16 v12, 0xc

    const v15, 0x696c7374

    const-wide/16 v16, 0x0

    move-object/from16 v18, v7

    iget v7, v1, Lc1/m;->b:I

    const/16 v2, 0x8

    move/from16 v20, v7

    if-eqz v6, :cond_13

    sget-object v21, Lc1/d;->a:[B

    invoke-virtual {v6, v8}, Ll0/b;->l(I)Ll0/c;

    move-result-object v7

    const v8, 0x6b657973

    invoke-virtual {v6, v8}, Ll0/b;->l(I)Ll0/c;

    move-result-object v8

    invoke-virtual {v6, v15}, Ll0/b;->l(I)Ll0/c;

    move-result-object v6

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    iget-object v7, v7, Ll0/c;->r:Lk0/u;

    invoke-virtual {v7, v10}, Lk0/u;->G(I)V

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v7

    const v10, 0x6d647461

    if-eq v7, v10, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v7, v8, Ll0/c;->r:Lk0/u;

    invoke-virtual {v7, v12}, Lk0/u;->G(I)V

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v8

    new-array v10, v8, [Ljava/lang/String;

    move v12, v3

    :goto_1
    if-ge v12, v8, :cond_2

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v25

    invoke-virtual {v7, v9}, Lk0/u;->H(I)V

    add-int/lit8 v15, v25, -0x8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v15, v9}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x4

    const v15, 0x696c7374

    goto :goto_1

    :cond_2
    iget-object v6, v6, Ll0/c;->r:Lk0/u;

    invoke-virtual {v6, v2}, Lk0/u;->G(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v6}, Lk0/u;->a()I

    move-result v9

    if-le v9, v2, :cond_7

    iget v9, v6, Lk0/u;->b:I

    invoke-virtual {v6}, Lk0/u;->g()I

    move-result v12

    invoke-virtual {v6}, Lk0/u;->g()I

    move-result v15

    sub-int/2addr v15, v13

    if-ltz v15, :cond_5

    if-ge v15, v8, :cond_5

    aget-object v15, v10, v15

    add-int v2, v9, v12

    :goto_3
    iget v14, v6, Lk0/u;->b:I

    if-ge v14, v2, :cond_4

    invoke-virtual {v6}, Lk0/u;->g()I

    move-result v27

    invoke-virtual {v6}, Lk0/u;->g()I

    move-result v4

    if-ne v4, v11, :cond_3

    invoke-virtual {v6}, Lk0/u;->g()I

    move-result v2

    invoke-virtual {v6}, Lk0/u;->g()I

    move-result v4

    add-int/lit8 v14, v27, -0x10

    new-array v11, v14, [B

    invoke-virtual {v6, v11, v3, v14}, Lk0/u;->e([BII)V

    new-instance v14, Ll0/a;

    invoke-direct {v14, v15, v11, v4, v2}, Ll0/a;-><init>(Ljava/lang/String;[BII)V

    goto :goto_4

    :cond_3
    add-int v14, v14, v27

    invoke-virtual {v6, v14}, Lk0/u;->G(I)V

    const v11, 0x64617461

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_6

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const-string v2, "BoxParsers"

    const-string v4, "Skipped metadata with unknown key index: "

    invoke-static {v4, v15, v2}, Lcom/google/android/material/datepicker/e;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    :goto_5
    add-int/2addr v9, v12

    invoke-virtual {v6, v9}, Lk0/u;->G(I)V

    const/16 v2, 0x8

    const v11, 0x64617461

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    new-instance v2, Landroidx/media3/common/Metadata;

    invoke-direct {v2, v7}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_7
    iget-boolean v4, v1, Lc1/m;->x:Z

    if-eqz v4, :cond_10

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    const-string v4, "editable.tracks.samples.location"

    invoke-static {v2, v4}, Lc1/k;->a(Landroidx/media3/common/Metadata;Ljava/lang/String;)Ll0/a;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, v4, Ll0/a;->q:[B

    aget-byte v4, v4, v3

    if-nez v4, :cond_a

    iget-wide v6, v1, Lc1/m;->w:J

    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lc1/m;->y:J

    :cond_a
    const-string v4, "editable.tracks.map"

    invoke-static {v2, v4}, Lc1/k;->a(Landroidx/media3/common/Metadata;Ljava/lang/String;)Ll0/a;

    move-result-object v4

    invoke-static {v4}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ll0/a;->a()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_f

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_e

    if-eq v8, v13, :cond_d

    const/4 v9, 0x2

    if-eq v8, v9, :cond_c

    const/4 v9, 0x3

    if-eq v8, v9, :cond_b

    move v8, v3

    goto :goto_9

    :cond_b
    const/4 v8, 0x4

    goto :goto_9

    :cond_c
    const/4 v8, 0x3

    goto :goto_9

    :cond_d
    const/4 v8, 0x2

    goto :goto_9

    :cond_e
    move v8, v13

    :goto_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_f
    move-object v4, v7

    goto :goto_b

    :cond_10
    if-nez v2, :cond_11

    goto :goto_a

    :cond_11
    and-int/lit8 v4, v20, 0x40

    if-eqz v4, :cond_12

    const-string v4, "editable.tracks.offset"

    invoke-static {v2, v4}, Lc1/k;->a(Landroidx/media3/common/Metadata;Ljava/lang/String;)Ll0/a;

    move-result-object v4

    if-eqz v4, :cond_12

    new-instance v6, Lk0/u;

    iget-object v4, v4, Ll0/a;->q:[B

    invoke-direct {v6, v4}, Lk0/u;-><init>([B)V

    invoke-virtual {v6}, Lk0/u;->z()J

    move-result-wide v6

    cmp-long v4, v6, v16

    if-lez v4, :cond_12

    iput-wide v6, v1, Lc1/m;->w:J

    iput-boolean v13, v1, Lc1/m;->v:Z

    move-object/from16 v30, v0

    goto/16 :goto_38

    :cond_12
    :goto_a
    move-object/from16 v4, v18

    goto :goto_b

    :cond_13
    move-object/from16 v4, v18

    const/4 v2, 0x0

    :goto_b
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget v6, v1, Lc1/m;->E:I

    if-ne v6, v13, :cond_14

    move v11, v13

    goto :goto_c

    :cond_14
    move v11, v3

    :goto_c
    new-instance v6, LI0/y;

    invoke-direct {v6}, LI0/y;-><init>()V

    const v7, 0x75647461

    invoke-virtual {v5, v7}, Ll0/b;->l(I)Ll0/c;

    move-result-object v7

    if-eqz v7, :cond_52

    sget-object v8, Lc1/d;->a:[B

    iget-object v7, v7, Ll0/c;->r:Lk0/u;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lk0/u;->G(I)V

    new-instance v9, Landroidx/media3/common/Metadata;

    new-array v10, v3, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v9, v10}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_d
    invoke-virtual {v7}, Lk0/u;->a()I

    move-result v10

    if-lt v10, v8, :cond_51

    iget v10, v7, Lk0/u;->b:I

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v12

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v15

    const v3, 0x6d657461

    if-ne v15, v3, :cond_40

    invoke-virtual {v7, v10}, Lk0/u;->G(I)V

    add-int v15, v10, v12

    invoke-virtual {v7, v8}, Lk0/u;->H(I)V

    iget v8, v7, Lk0/u;->b:I

    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Lk0/u;->H(I)V

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v3

    move/from16 v29, v13

    const v13, 0x68646c72    # 4.3148E24f

    if-eq v3, v13, :cond_15

    add-int/lit8 v8, v8, 0x4

    :cond_15
    invoke-virtual {v7, v8}, Lk0/u;->G(I)V

    :goto_e
    iget v3, v7, Lk0/u;->b:I

    if-ge v3, v15, :cond_3f

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v8

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v13

    move-object/from16 v30, v0

    const v0, 0x696c7374

    if-ne v13, v0, :cond_3e

    invoke-virtual {v7, v3}, Lk0/u;->G(I)V

    add-int/2addr v3, v8

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lk0/u;->H(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    iget v13, v7, Lk0/u;->b:I

    if-ge v13, v3, :cond_3c

    const-string v15, "Skipped unknown metadata entry: "

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v26

    add-int v13, v26, v13

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v0

    move/from16 v31, v3

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    move/from16 v32, v11

    const/16 v11, 0xa9

    move/from16 v33, v12

    const-string v12, "MetadataUtil"

    move-object/from16 v34, v14

    const-string v14, "TCON"

    if-eq v3, v11, :cond_16

    const/16 v11, 0xfd

    if-ne v3, v11, :cond_17

    :cond_16
    const v3, 0x64617461

    goto/16 :goto_16

    :cond_17
    const v3, 0x676e7265

    if-ne v0, v3, :cond_19

    :try_start_0
    invoke-static {v7}, Lc1/k;->e(Lk0/u;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, LW0/k;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v3, LW0/o;

    invoke-static {v0}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v0

    const/4 v11, 0x0

    invoke-direct {v3, v14, v11, v0}, LW0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lp3/Y;)V

    goto :goto_10

    :cond_18
    const/4 v11, 0x0

    const-string v0, "Failed to parse standard genre code"

    invoke-static {v12, v0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v11

    :goto_10
    invoke-virtual {v7, v13}, Lk0/u;->G(I)V

    goto/16 :goto_19

    :cond_19
    const/4 v11, 0x0

    const v3, 0x6469736b

    if-ne v0, v3, :cond_1a

    :try_start_1
    const-string v3, "TPOS"

    invoke-static {v0, v3, v7}, Lc1/k;->d(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto :goto_10

    :catchall_0
    move-exception v0

    goto/16 :goto_1a

    :cond_1a
    const v3, 0x74726b6e

    if-ne v0, v3, :cond_1b

    const-string v3, "TRCK"

    invoke-static {v0, v3, v7}, Lc1/k;->d(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto :goto_10

    :cond_1b
    const v3, 0x746d706f

    if-ne v0, v3, :cond_1c

    const-string v3, "TBPM"

    move/from16 v12, v29

    const/4 v14, 0x0

    invoke-static {v0, v3, v7, v12, v14}, Lc1/k;->f(ILjava/lang/String;Lk0/u;ZZ)LW0/j;

    move-result-object v3

    goto :goto_10

    :cond_1c
    const v3, 0x6370696c

    if-ne v0, v3, :cond_1d

    const-string v3, "TCMP"

    const/4 v12, 0x1

    invoke-static {v0, v3, v7, v12, v12}, Lc1/k;->f(ILjava/lang/String;Lk0/u;ZZ)LW0/j;

    move-result-object v3

    goto :goto_10

    :cond_1d
    const v3, 0x636f7672

    if-ne v0, v3, :cond_1e

    invoke-static {v7}, Lc1/k;->c(Lk0/u;)LW0/a;

    move-result-object v3

    goto :goto_10

    :cond_1e
    const v3, 0x61415254

    if-ne v0, v3, :cond_1f

    const-string v3, "TPE2"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto :goto_10

    :cond_1f
    const v3, 0x736f6e6d

    if-ne v0, v3, :cond_20

    const-string v3, "TSOT"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto :goto_10

    :cond_20
    const v3, 0x736f616c

    if-ne v0, v3, :cond_21

    const-string v3, "TSOA"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto :goto_10

    :cond_21
    const v3, 0x736f6172

    if-ne v0, v3, :cond_22

    const-string v3, "TSOP"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto :goto_10

    :cond_22
    const v3, 0x736f6161

    if-ne v0, v3, :cond_23

    const-string v3, "TSO2"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_23
    const v3, 0x736f636f

    if-ne v0, v3, :cond_24

    const-string v3, "TSOC"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_24
    const v3, 0x72746e67

    if-ne v0, v3, :cond_25

    const-string v3, "ITUNESADVISORY"

    const/4 v14, 0x0

    invoke-static {v0, v3, v7, v14, v14}, Lc1/k;->f(ILjava/lang/String;Lk0/u;ZZ)LW0/j;

    move-result-object v3

    goto/16 :goto_10

    :cond_25
    const v3, 0x70676170

    if-ne v0, v3, :cond_26

    const-string v3, "ITUNESGAPLESS"

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-static {v0, v3, v7, v14, v12}, Lc1/k;->f(ILjava/lang/String;Lk0/u;ZZ)LW0/j;

    move-result-object v3

    goto/16 :goto_10

    :cond_26
    const v3, 0x736f736e

    if-ne v0, v3, :cond_27

    const-string v3, "TVSHOWSORT"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_27
    const v3, 0x74767368

    if-ne v0, v3, :cond_28

    const-string v3, "TVSHOW"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_28
    const v3, 0x2d2d2d2d

    if-ne v0, v3, :cond_38

    move-object v12, v11

    move-object v14, v12

    const/4 v0, -0x1

    const/4 v3, -0x1

    :goto_11
    iget v15, v7, Lk0/u;->b:I

    if-ge v15, v13, :cond_2c

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v21

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v11

    move/from16 v35, v3

    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Lk0/u;->H(I)V

    const v3, 0x6d65616e

    if-ne v11, v3, :cond_29

    add-int/lit8 v3, v21, -0xc

    invoke-virtual {v7, v3}, Lk0/u;->q(I)Ljava/lang/String;

    move-result-object v12

    :goto_12
    const v3, 0x64617461

    goto :goto_13

    :cond_29
    const v3, 0x6e616d65

    if-ne v11, v3, :cond_2a

    add-int/lit8 v3, v21, -0xc

    invoke-virtual {v7, v3}, Lk0/u;->q(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_12

    :cond_2a
    const v3, 0x64617461

    if-ne v11, v3, :cond_2b

    move v0, v15

    move/from16 v35, v21

    :cond_2b
    add-int/lit8 v11, v21, -0xc

    invoke-virtual {v7, v11}, Lk0/u;->H(I)V

    :goto_13
    move/from16 v3, v35

    const/4 v11, 0x0

    goto :goto_11

    :cond_2c
    move/from16 v35, v3

    const v3, 0x64617461

    if-eqz v12, :cond_2e

    if-eqz v14, :cond_2e

    const/4 v11, -0x1

    if-ne v0, v11, :cond_2d

    goto :goto_14

    :cond_2d
    invoke-virtual {v7, v0}, Lk0/u;->G(I)V

    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Lk0/u;->H(I)V

    add-int/lit8 v0, v35, -0x10

    invoke-virtual {v7, v0}, Lk0/u;->q(I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, LW0/l;

    invoke-direct {v11, v12, v14, v0}, LW0/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_15

    :cond_2e
    :goto_14
    const/4 v11, 0x0

    :goto_15
    invoke-virtual {v7, v13}, Lk0/u;->G(I)V

    move-object v3, v11

    goto/16 :goto_19

    :goto_16
    const v11, 0xffffff

    and-int/2addr v11, v0

    const v3, 0x636d74

    if-ne v11, v3, :cond_2f

    :try_start_2
    invoke-static {v7, v0}, Lc1/k;->b(Lk0/u;I)LW0/e;

    move-result-object v3

    goto/16 :goto_10

    :cond_2f
    const v3, 0x6e616d

    if-eq v11, v3, :cond_3a

    const v3, 0x74726b

    if-ne v11, v3, :cond_30

    goto/16 :goto_18

    :cond_30
    const v3, 0x636f6d

    if-eq v11, v3, :cond_39

    const v3, 0x777274

    if-ne v11, v3, :cond_31

    goto/16 :goto_17

    :cond_31
    const v3, 0x646179

    if-ne v11, v3, :cond_32

    const-string v3, "TDRC"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_32
    const v3, 0x415254

    if-ne v11, v3, :cond_33

    const-string v3, "TPE1"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_33
    const v3, 0x746f6f

    if-ne v11, v3, :cond_34

    const-string v3, "TSSE"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_34
    const v3, 0x616c62

    if-ne v11, v3, :cond_35

    const-string v3, "TALB"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_35
    const v3, 0x6c7972

    if-ne v11, v3, :cond_36

    const-string v3, "USLT"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_36
    const v3, 0x67656e

    if-ne v11, v3, :cond_37

    invoke-static {v0, v14, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_37
    const v3, 0x677270

    if-ne v11, v3, :cond_38

    const-string v3, "TIT1"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LU2/e;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lk0/c;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7, v13}, Lk0/u;->G(I)V

    const/4 v3, 0x0

    goto :goto_19

    :cond_39
    :goto_17
    :try_start_3
    const-string v3, "TCOM"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3

    goto/16 :goto_10

    :cond_3a
    :goto_18
    const-string v3, "TIT2"

    invoke-static {v0, v3, v7}, Lc1/k;->g(ILjava/lang/String;Lk0/u;)LW0/o;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_10

    :goto_19
    if-eqz v3, :cond_3b

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    move/from16 v3, v31

    move/from16 v11, v32

    move/from16 v12, v33

    move-object/from16 v14, v34

    const v0, 0x696c7374

    const/16 v29, 0x1

    goto/16 :goto_f

    :goto_1a
    invoke-virtual {v7, v13}, Lk0/u;->G(I)V

    throw v0

    :cond_3c
    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v34, v14

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    :goto_1b
    const v28, 0x64617461

    goto :goto_1c

    :cond_3d
    new-instance v0, Landroidx/media3/common/Metadata;

    invoke-direct {v0, v8}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1b

    :cond_3e
    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v34, v14

    const v28, 0x64617461

    add-int/2addr v3, v8

    invoke-virtual {v7, v3}, Lk0/u;->G(I)V

    move-object/from16 v0, v30

    const v13, 0x68646c72    # 4.3148E24f

    const/16 v29, 0x1

    goto/16 :goto_e

    :cond_3f
    move-object/from16 v30, v0

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v34, v14

    const v28, 0x64617461

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v9, v0}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    move-object v9, v0

    const/16 v8, 0x8

    const/4 v11, 0x4

    const/16 v14, 0xc

    goto/16 :goto_27

    :cond_40
    move-object/from16 v30, v0

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v34, v14

    const v28, 0x64617461

    const v0, 0x736d7461

    if-ne v15, v0, :cond_4f

    invoke-virtual {v7, v10}, Lk0/u;->G(I)V

    add-int v12, v10, v33

    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Lk0/u;->H(I)V

    :goto_1d
    iget v0, v7, Lk0/u;->b:I

    if-ge v0, v12, :cond_4e

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v3

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v8

    const v11, 0x73617574

    if-ne v8, v11, :cond_4d

    const/16 v8, 0x10

    if-ge v3, v8, :cond_41

    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v11, 0x4

    const/16 v14, 0xc

    goto/16 :goto_24

    :cond_41
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Lk0/u;->H(I)V

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_1e
    const/4 v14, 0x2

    if-ge v3, v14, :cond_44

    invoke-virtual {v7}, Lk0/u;->u()I

    move-result v14

    invoke-virtual {v7}, Lk0/u;->u()I

    move-result v15

    if-nez v14, :cond_42

    move v0, v15

    goto :goto_1f

    :cond_42
    const/4 v8, 0x1

    if-ne v14, v8, :cond_43

    move v13, v15

    :cond_43
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x10

    goto :goto_1e

    :cond_44
    const v3, -0x7fffffff

    const/16 v8, 0xc

    if-ne v0, v8, :cond_45

    const/16 v0, 0xf0

    :goto_20
    const/16 v8, 0x8

    const/16 v14, 0xc

    goto :goto_22

    :cond_45
    const/16 v8, 0xd

    if-ne v0, v8, :cond_46

    const/16 v0, 0x78

    goto :goto_20

    :cond_46
    const/16 v8, 0x15

    if-eq v0, v8, :cond_47

    move v0, v3

    goto :goto_20

    :cond_47
    invoke-virtual {v7}, Lk0/u;->a()I

    move-result v0

    const/16 v8, 0x8

    if-lt v0, v8, :cond_48

    iget v0, v7, Lk0/u;->b:I

    add-int/2addr v0, v8

    if-le v0, v12, :cond_49

    :cond_48
    const/16 v14, 0xc

    goto :goto_21

    :cond_49
    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v0

    invoke-virtual {v7}, Lk0/u;->g()I

    move-result v12

    const/16 v14, 0xc

    if-lt v0, v14, :cond_4b

    const v0, 0x73726672

    if-eq v12, v0, :cond_4a

    goto :goto_21

    :cond_4a
    invoke-virtual {v7}, Lk0/u;->v()I

    move-result v0

    goto :goto_22

    :cond_4b
    :goto_21
    move v0, v3

    :goto_22
    if-ne v0, v3, :cond_4c

    :goto_23
    const/4 v3, 0x0

    goto :goto_24

    :cond_4c
    new-instance v3, Landroidx/media3/common/Metadata;

    new-instance v12, LX0/d;

    int-to-float v0, v0

    invoke-direct {v12, v13, v0}, LX0/d;-><init>(IF)V

    const/4 v0, 0x1

    new-array v13, v0, [Landroidx/media3/common/Metadata$Entry;

    const/16 v27, 0x0

    aput-object v12, v13, v27

    invoke-direct {v3, v13}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_24

    :cond_4d
    const/16 v8, 0x8

    const/4 v11, 0x4

    const/16 v14, 0xc

    add-int/2addr v0, v3

    invoke-virtual {v7, v0}, Lk0/u;->G(I)V

    goto/16 :goto_1d

    :cond_4e
    const/16 v8, 0x8

    const/4 v11, 0x4

    const/16 v14, 0xc

    goto :goto_23

    :goto_24
    invoke-virtual {v9, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    :goto_25
    move-object v9, v0

    goto :goto_27

    :cond_4f
    const/16 v8, 0x8

    const/4 v11, 0x4

    const/16 v14, 0xc

    const v0, -0x56878686

    if-ne v15, v0, :cond_50

    invoke-virtual {v7}, Lk0/u;->r()S

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Lk0/u;->H(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v0, v3}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/16 v12, 0x2d

    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v12, 0x0

    :try_start_4
    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v3, Landroidx/media3/common/Metadata;

    new-instance v13, Ll0/d;

    invoke-direct {v13, v12, v0}, Ll0/d;-><init>(FF)V

    new-array v0, v15, [Landroidx/media3/common/Metadata$Entry;

    const/16 v27, 0x0

    aput-object v13, v0, v27

    invoke-direct {v3, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_26

    :catch_0
    const/4 v3, 0x0

    :goto_26
    invoke-virtual {v9, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    goto :goto_25

    :cond_50
    :goto_27
    add-int v10, v10, v33

    invoke-virtual {v7, v10}, Lk0/u;->G(I)V

    move-object/from16 v0, v30

    move/from16 v11, v32

    move-object/from16 v14, v34

    const/4 v3, 0x0

    const/4 v13, 0x1

    goto/16 :goto_d

    :cond_51
    move-object/from16 v30, v0

    move/from16 v32, v11

    move-object/from16 v34, v14

    invoke-virtual {v6, v9}, LI0/y;->b(Landroidx/media3/common/Metadata;)V

    move-object v0, v9

    goto :goto_28

    :cond_52
    move-object/from16 v30, v0

    move/from16 v32, v11

    move-object/from16 v34, v14

    const/4 v0, 0x0

    :goto_28
    new-instance v3, Landroidx/media3/common/Metadata;

    const v7, 0x6d766864

    invoke-virtual {v5, v7}, Ll0/b;->l(I)Ll0/c;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Ll0/c;->r:Lk0/u;

    invoke-static {v7}, Lc1/d;->e(Lk0/u;)Ll0/e;

    move-result-object v7

    const/4 v12, 0x1

    new-array v8, v12, [Landroidx/media3/common/Metadata$Entry;

    const/16 v27, 0x0

    aput-object v7, v8, v27

    invoke-direct {v3, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    and-int/lit8 v7, v20, 0x1

    if-eqz v7, :cond_53

    const/4 v10, 0x1

    goto :goto_29

    :cond_53
    const/4 v10, 0x0

    :goto_29
    new-instance v12, Landroidx/media3/common/d;

    const/16 v7, 0x9

    invoke-direct {v12, v7}, Landroidx/media3/common/d;-><init>(I)V

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move/from16 v11, v32

    const/16 v21, 0x0

    invoke-static/range {v5 .. v12}, Lc1/d;->h(Ll0/b;LI0/y;JLandroidx/media3/common/DrmInitData;ZZLo3/d;)Ljava/util/ArrayList;

    move-result-object v5

    iget-boolean v7, v1, Lc1/m;->x:Z

    if-eqz v7, :cond_55

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_54

    const/4 v7, 0x1

    goto :goto_2a

    :cond_54
    const/4 v7, 0x0

    :goto_2a
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "The number of auxiliary track types from metadata ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") is not same as the number of editable video tracks ("

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lk0/c;->i(Ljava/lang/String;Z)V

    :cond_55
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_67

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc1/t;

    iget v15, v14, Lc1/t;->b:I

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    iget v7, v14, Lc1/t;->e:I

    if-nez v15, :cond_56

    move-object/from16 v19, v0

    move-object v15, v2

    move-object/from16 v25, v3

    move-object/from16 v24, v5

    move-object/from16 v3, v34

    const/4 v0, -0x1

    const/4 v2, 0x3

    goto/16 :goto_34

    :cond_56
    iget-object v8, v14, Lc1/t;->a:Lc1/q;

    move-object v15, v2

    move-object/from16 v19, v3

    iget-wide v2, v8, Lc1/q;->e:J

    move-wide/from16 v24, v2

    iget-object v2, v8, Lc1/q;->g:Landroidx/media3/common/Format;

    iget v3, v8, Lc1/q;->b:I

    cmp-long v26, v24, v22

    if-eqz v26, :cond_57

    move-wide/from16 v36, v24

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-wide/from16 v5, v36

    goto :goto_2c

    :cond_57
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    iget-wide v5, v14, Lc1/t;->h:J

    :goto_2c
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move/from16 v26, v7

    new-instance v7, Lc1/l;

    move-wide/from16 v31, v12

    iget-object v12, v1, Lc1/m;->z:LI0/s;

    add-int/lit8 v13, v10, 0x1

    invoke-interface {v12, v10, v3}, LI0/s;->track(II)LI0/L;

    move-result-object v10

    invoke-direct {v7, v8, v14, v10}, Lc1/l;-><init>(Lc1/q;Lc1/t;LI0/L;)V

    const-string v8, "audio/true-hd"

    iget-object v10, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    mul-int/lit8 v8, v26, 0x10

    goto :goto_2d

    :cond_58
    add-int/lit8 v8, v26, 0x1e

    :goto_2d
    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    const/4 v8, 0x2

    if-ne v3, v8, :cond_5d

    iget v8, v2, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v12, v20, 0x8

    if-eqz v12, :cond_5a

    const/4 v12, -0x1

    if-ne v11, v12, :cond_59

    const/4 v12, 0x1

    goto :goto_2e

    :cond_59
    const/4 v12, 0x2

    :goto_2e
    or-int/2addr v8, v12

    :cond_5a
    iget v2, v2, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v2, v2, v12

    if-nez v2, :cond_5b

    cmp-long v2, v5, v16

    if-lez v2, :cond_5b

    iget v2, v14, Lc1/t;->b:I

    if-lez v2, :cond_5b

    int-to-float v2, v2

    long-to-float v5, v5

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v5, v6

    div-float/2addr v2, v5

    invoke-virtual {v10, v2}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    :cond_5b
    iget-boolean v2, v1, Lc1/m;->x:Z

    if-eqz v2, :cond_5c

    const v2, 0x8000

    or-int/2addr v8, v2

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/media3/common/Format$Builder;->setAuxiliaryTrackType(I)Landroidx/media3/common/Format$Builder;

    :cond_5c
    invoke-virtual {v10, v8}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    :cond_5d
    const/4 v12, 0x1

    move-object/from16 v6, v25

    if-ne v3, v12, :cond_5e

    iget v2, v6, LI0/y;->a:I

    const/4 v12, -0x1

    if-eq v2, v12, :cond_5e

    iget v5, v6, LI0/y;->b:I

    if-eq v5, v12, :cond_5e

    invoke-virtual {v10, v2}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v5, v6, LI0/y;->b:I

    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    :cond_5e
    iget-object v2, v1, Lc1/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5f

    move-object/from16 v5, v21

    :goto_2f
    move-object/from16 v2, v19

    goto :goto_30

    :cond_5f
    new-instance v5, Landroidx/media3/common/Metadata;

    invoke-direct {v5, v2}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_2f

    :goto_30
    filled-new-array {v5, v0, v2}, [Landroidx/media3/common/Metadata;

    move-result-object v5

    new-instance v8, Landroidx/media3/common/Metadata;

    const/4 v14, 0x0

    new-array v12, v14, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v8, v12}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    if-eqz v15, :cond_63

    const/4 v12, 0x0

    :goto_31
    invoke-virtual {v15}, Landroidx/media3/common/Metadata;->length()I

    move-result v14

    if-ge v12, v14, :cond_63

    invoke-virtual {v15, v12}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v14

    move-object/from16 v19, v0

    instance-of v0, v14, Ll0/a;

    if-eqz v0, :cond_62

    check-cast v14, Ll0/a;

    iget-object v0, v14, Ll0/a;->b:Ljava/lang/String;

    move-object/from16 v25, v2

    const-string v2, "com.android.capture.fps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x2

    if-ne v3, v0, :cond_60

    const/4 v0, 0x1

    new-array v2, v0, [Landroidx/media3/common/Metadata$Entry;

    const/16 v27, 0x0

    aput-object v14, v2, v27

    invoke-virtual {v8, v2}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v2

    move-object v8, v2

    goto :goto_32

    :cond_60
    const/16 v27, 0x0

    goto :goto_32

    :cond_61
    const/4 v0, 0x1

    const/16 v27, 0x0

    new-array v2, v0, [Landroidx/media3/common/Metadata$Entry;

    aput-object v14, v2, v27

    invoke-virtual {v8, v2}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v0

    move-object v8, v0

    goto :goto_32

    :cond_62
    move-object/from16 v25, v2

    :goto_32
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v19

    move-object/from16 v2, v25

    goto :goto_31

    :cond_63
    move-object/from16 v19, v0

    move-object/from16 v25, v2

    const/4 v0, 0x0

    const/4 v2, 0x3

    :goto_33
    if-ge v0, v2, :cond_64

    aget-object v12, v5, v0

    invoke-virtual {v8, v12}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_64
    invoke-virtual {v8}, Landroidx/media3/common/Metadata;->length()I

    move-result v0

    if-lez v0, :cond_65

    invoke-virtual {v10, v8}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    :cond_65
    iget-object v0, v7, Lc1/l;->c:LI0/L;

    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    invoke-interface {v0, v5}, LI0/L;->format(Landroidx/media3/common/Format;)V

    const/4 v14, 0x2

    const/4 v0, -0x1

    if-ne v3, v14, :cond_66

    if-ne v11, v0, :cond_66

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v11

    :cond_66
    move-object/from16 v3, v34

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v13

    move-wide/from16 v12, v31

    :goto_34
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v34, v3

    move-object v2, v15

    move-object/from16 v0, v19

    move-object/from16 v5, v24

    move-object/from16 v3, v25

    goto/16 :goto_2b

    :cond_67
    move-object/from16 v3, v34

    const/4 v0, -0x1

    iput v11, v1, Lc1/m;->C:I

    iput-wide v12, v1, Lc1/m;->D:J

    const/4 v14, 0x0

    new-array v2, v14, [Lc1/l;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lc1/l;

    iput-object v2, v1, Lc1/m;->A:[Lc1/l;

    array-length v3, v2

    new-array v3, v3, [[J

    array-length v4, v2

    new-array v4, v4, [I

    array-length v5, v2

    new-array v5, v5, [J

    array-length v6, v2

    new-array v6, v6, [Z

    const/4 v14, 0x0

    :goto_35
    array-length v7, v2

    if-ge v14, v7, :cond_68

    aget-object v7, v2, v14

    iget-object v7, v7, Lc1/l;->b:Lc1/t;

    iget v7, v7, Lc1/t;->b:I

    new-array v7, v7, [J

    aput-object v7, v3, v14

    aget-object v7, v2, v14

    iget-object v7, v7, Lc1/l;->b:Lc1/t;

    iget-object v7, v7, Lc1/t;->f:[J

    const/16 v27, 0x0

    aget-wide v8, v7, v27

    aput-wide v8, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_35

    :cond_68
    const/4 v14, 0x0

    :goto_36
    array-length v7, v2

    if-ge v14, v7, :cond_6c

    const-wide v7, 0x7fffffffffffffffL

    move v11, v0

    const/4 v9, 0x0

    :goto_37
    array-length v10, v2

    if-ge v9, v10, :cond_6a

    aget-boolean v10, v6, v9

    if-nez v10, :cond_69

    aget-wide v12, v5, v9

    cmp-long v10, v12, v7

    if-gtz v10, :cond_69

    move v11, v9

    move-wide v7, v12

    :cond_69
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    :cond_6a
    aget v7, v4, v11

    aget-object v8, v3, v11

    aput-wide v16, v8, v7

    aget-object v9, v2, v11

    iget-object v9, v9, Lc1/l;->b:Lc1/t;

    iget-object v10, v9, Lc1/t;->d:[I

    aget v10, v10, v7

    int-to-long v12, v10

    add-long v16, v16, v12

    const/16 v29, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v11

    array-length v8, v8

    if-ge v7, v8, :cond_6b

    iget-object v8, v9, Lc1/t;->f:[J

    aget-wide v7, v8, v7

    aput-wide v7, v5, v11

    goto :goto_36

    :cond_6b
    aput-boolean v29, v6, v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_36

    :cond_6c
    iput-object v3, v1, Lc1/m;->B:[[J

    iget-object v0, v1, Lc1/m;->z:LI0/s;

    invoke-interface {v0}, LI0/s;->endTracks()V

    iget-object v0, v1, Lc1/m;->z:LI0/s;

    invoke-interface {v0, v1}, LI0/s;->seekMap(LI0/F;)V

    :goto_38
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayDeque;->clear()V

    iget-boolean v0, v1, Lc1/m;->v:Z

    if-nez v0, :cond_0

    const/4 v14, 0x2

    iput v14, v1, Lc1/m;->k:I

    goto/16 :goto_0

    :cond_6d
    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/b;

    iget-object v0, v0, Ll0/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6e
    iget v0, v1, Lc1/m;->k:I

    const/4 v14, 0x2

    if-eq v0, v14, :cond_6f

    const/4 v14, 0x0

    iput v14, v1, Lc1/m;->k:I

    iput v14, v1, Lc1/m;->n:I

    :cond_6f
    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
