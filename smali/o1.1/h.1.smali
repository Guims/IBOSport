.class public final Lo1/h;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# instance fields
.field public final a:Lk0/u;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Ljava/lang/String;

.field public f:LI0/L;

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:Landroidx/media3/common/Format;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:J


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk0/u;

    new-array p3, p3, [B

    invoke-direct {v0, p3}, Lk0/u;-><init>([B)V

    iput-object v0, p0, Lo1/h;->a:Lk0/u;

    const/4 p3, 0x0

    iput p3, p0, Lo1/h;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/h;->p:J

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lo1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, -0x1

    iput p3, p0, Lo1/h;->n:I

    iput p3, p0, Lo1/h;->o:I

    iput-object p1, p0, Lo1/h;->c:Ljava/lang/String;

    iput p2, p0, Lo1/h;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lk0/u;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    iget v1, p0, Lo1/h;->h:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lo1/h;->h:I

    invoke-virtual {p1, p2, v1, v0}, Lk0/u;->e([BII)V

    iget p1, p0, Lo1/h;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lo1/h;->h:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lo1/h;->g:I

    iput v0, p0, Lo1/h;->h:I

    iput v0, p0, Lo1/h;->i:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lo1/h;->p:J

    iget-object v1, p0, Lo1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo1/h;->f:LI0/L;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v2

    if-lez v2, :cond_3c

    iget v2, v0, Lo1/h;->g:I

    const v13, 0x40411bf2

    const/4 v15, 0x5

    const/16 v6, 0x20

    const/4 v8, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v14, 0x1

    const/16 v26, 0x8

    iget-object v10, v0, Lo1/h;->a:Lk0/u;

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :pswitch_0
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v2

    iget v5, v0, Lo1/h;->l:I

    iget v6, v0, Lo1/h;->h:I

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, v0, Lo1/h;->f:LI0/L;

    invoke-interface {v5, v1, v2}, LI0/L;->sampleData(Lk0/u;I)V

    iget v5, v0, Lo1/h;->h:I

    add-int/2addr v5, v2

    iput v5, v0, Lo1/h;->h:I

    iget v2, v0, Lo1/h;->l:I

    if-ne v5, v2, :cond_0

    iget-wide v5, v0, Lo1/h;->p:J

    cmp-long v2, v5, v17

    if-eqz v2, :cond_1

    move v2, v14

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-static {v2}, Lk0/c;->j(Z)V

    iget-object v5, v0, Lo1/h;->f:LI0/L;

    iget-wide v6, v0, Lo1/h;->p:J

    iget v2, v0, Lo1/h;->m:I

    if-ne v2, v3, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v14

    :goto_2
    iget v9, v0, Lo1/h;->l:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iget-wide v2, v0, Lo1/h;->p:J

    iget-wide v5, v0, Lo1/h;->j:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Lo1/h;->p:J

    iput v4, v0, Lo1/h;->g:I

    goto :goto_0

    :pswitch_1
    iget-object v2, v10, Lk0/u;->a:[B

    iget v15, v0, Lo1/h;->o:I

    invoke-virtual {v0, v1, v2, v15}, Lo1/h;->a(Lk0/u;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lk0/u;->a:[B

    invoke-static {v2}, LI0/p;->a([B)LI0/N;

    move-result-object v15

    invoke-virtual {v15, v6}, LI0/N;->i(I)I

    move-result v6

    if-ne v6, v13, :cond_3

    move v6, v14

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    sget-object v13, LI0/p;->e:[I

    invoke-static {v15, v13}, LI0/p;->b(LI0/N;[I)I

    move-result v13

    add-int/lit8 v22, v13, 0x1

    if-eqz v6, :cond_e

    invoke-virtual {v15}, LI0/N;->h()Z

    move-result v21

    if-eqz v21, :cond_d

    move/from16 v27, v3

    add-int/lit8 v3, v13, -0x1

    aget-byte v21, v2, v3

    shl-int/lit8 v21, v21, 0x8

    const v23, 0xffff

    and-int v21, v21, v23

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    or-int v13, v21, v13

    sget v21, Lk0/C;->a:I

    move v11, v4

    move/from16 v9, v23

    :goto_4
    if-ge v11, v3, :cond_4

    aget-byte v4, v2, v11

    and-int/lit16 v7, v4, 0xff

    shr-int/lit8 v7, v7, 0x4

    shr-int/lit8 v5, v9, 0xc

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v7, v9, 0x4

    and-int v7, v7, v23

    sget-object v9, Lk0/C;->p:[I

    aget v5, v9, v5

    xor-int/2addr v5, v7

    and-int v5, v5, v23

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v7, v5, 0xc

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v5, 0x4

    and-int v5, v5, v23

    aget v4, v9, v4

    xor-int/2addr v4, v5

    and-int v9, v4, v23

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    if-ne v13, v9, :cond_c

    invoke-virtual {v15, v12}, LI0/N;->i(I)I

    move-result v2

    if-eqz v2, :cond_7

    if-eq v2, v14, :cond_6

    if-ne v2, v12, :cond_5

    const/16 v11, 0x180

    :goto_5
    const/4 v2, 0x3

    goto :goto_6

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported base duration index in DTS UHD header: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_6
    const/16 v11, 0x1e0

    goto :goto_5

    :cond_7
    const/4 v2, 0x3

    const/16 v11, 0x200

    :goto_6
    invoke-virtual {v15, v2}, LI0/N;->i(I)I

    move-result v3

    add-int/2addr v3, v14

    mul-int/2addr v3, v11

    invoke-virtual {v15, v12}, LI0/N;->i(I)I

    move-result v2

    if-eqz v2, :cond_a

    if-eq v2, v14, :cond_9

    if-ne v2, v12, :cond_8

    const v8, 0xbb80

    goto :goto_7

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported clock rate index in DTS UHD header: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_9
    const v8, 0xac44

    goto :goto_7

    :cond_a
    const/16 v8, 0x7d00

    :goto_7
    invoke-virtual {v15}, LI0/N;->h()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x24

    invoke-virtual {v15, v2}, LI0/N;->t(I)V

    :cond_b
    invoke-virtual {v15, v12}, LI0/N;->i(I)I

    move-result v2

    shl-int v2, v14, v2

    mul-int v12, v8, v2

    int-to-long v2, v3

    int-to-long v4, v8

    sget-object v37, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v33, 0xf4240

    move-wide/from16 v31, v2

    move-wide/from16 v35, v4

    invoke-static/range {v31 .. v37}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    move-wide v7, v2

    move v5, v12

    goto :goto_8

    :cond_c
    const-string v1, "CRC check failed"

    invoke-static {v1, v8}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_d
    const-string v1, "Only supports full channel mask-based audio presentation"

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_e
    move-wide/from16 v7, v17

    const v5, -0x7fffffff

    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v2, v6, :cond_f

    sget-object v4, LI0/p;->f:[I

    invoke-static {v15, v4}, LI0/p;->b(LI0/N;[I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    iget-object v2, v0, Lo1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v6, :cond_10

    sget-object v4, LI0/p;->g:[I

    invoke-static {v15, v4}, LI0/p;->b(LI0/N;[I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, LI0/p;->h:[I

    invoke-static {v15, v2}, LI0/p;->b(LI0/N;[I)I

    move-result v2

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v3, v2

    add-int v6, v3, v22

    new-instance v2, LI0/a;

    const-string v3, "audio/vnd.dts.uhd;profile=p2"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v8}, LI0/a;-><init>(Ljava/lang/String;IIIJ)V

    iget v3, v0, Lo1/h;->m:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-virtual {v0, v2}, Lo1/h;->g(LI0/a;)V

    :cond_12
    iput v6, v0, Lo1/h;->l:I

    cmp-long v2, v7, v17

    if-nez v2, :cond_13

    const-wide/16 v5, 0x0

    goto :goto_b

    :cond_13
    move-wide v5, v7

    :goto_b
    iput-wide v5, v0, Lo1/h;->j:J

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lk0/u;->G(I)V

    iget-object v2, v0, Lo1/h;->f:LI0/L;

    iget v3, v0, Lo1/h;->o:I

    invoke-interface {v2, v10, v3}, LI0/L;->sampleData(Lk0/u;I)V

    const/4 v2, 0x6

    iput v2, v0, Lo1/h;->g:I

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x6

    iget-object v3, v10, Lk0/u;->a:[B

    invoke-virtual {v0, v1, v3, v2}, Lo1/h;->a(Lk0/u;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lk0/u;->a:[B

    invoke-static {v2}, LI0/p;->a([B)LI0/N;

    move-result-object v2

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    sget-object v3, LI0/p;->i:[I

    invoke-static {v2, v3}, LI0/p;->b(LI0/N;[I)I

    move-result v2

    add-int/2addr v2, v14

    iput v2, v0, Lo1/h;->o:I

    iget v3, v0, Lo1/h;->h:I

    if-le v3, v2, :cond_14

    sub-int v2, v3, v2

    sub-int/2addr v3, v2

    iput v3, v0, Lo1/h;->h:I

    iget v3, v1, Lk0/u;->b:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lk0/u;->G(I)V

    :cond_14
    iput v15, v0, Lo1/h;->g:I

    goto/16 :goto_0

    :pswitch_3
    move/from16 v27, v3

    iget-object v2, v10, Lk0/u;->a:[B

    iget v3, v0, Lo1/h;->n:I

    invoke-virtual {v0, v1, v2, v3}, Lo1/h;->a(Lk0/u;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lk0/u;->a:[B

    invoke-static {v2}, LI0/p;->a([B)LI0/N;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, LI0/N;->t(I)V

    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v3

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v4

    if-nez v4, :cond_15

    const/16 v4, 0x10

    move/from16 v5, v26

    goto :goto_c

    :cond_15
    const/16 v4, 0x14

    const/16 v5, 0xc

    :goto_c
    invoke-virtual {v2, v5}, LI0/N;->t(I)V

    invoke-virtual {v2, v4}, LI0/N;->i(I)I

    move-result v5

    add-int/lit8 v35, v5, 0x1

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, LI0/N;->i(I)I

    move-result v9

    add-int/2addr v9, v14

    const/16 v11, 0x200

    mul-int/2addr v9, v11

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v11

    if-eqz v11, :cond_16

    const/16 v11, 0x24

    invoke-virtual {v2, v11}, LI0/N;->t(I)V

    :cond_16
    invoke-virtual {v2, v7}, LI0/N;->i(I)I

    move-result v11

    add-int/2addr v11, v14

    invoke-virtual {v2, v7}, LI0/N;->i(I)I

    move-result v7

    add-int/2addr v7, v14

    if-ne v11, v14, :cond_19

    if-ne v7, v14, :cond_19

    add-int/2addr v3, v14

    invoke-virtual {v2, v3}, LI0/N;->i(I)I

    move-result v7

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v3, :cond_18

    shr-int v13, v7, v11

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_17

    move/from16 v13, v26

    invoke-virtual {v2, v13}, LI0/N;->t(I)V

    :cond_17
    add-int/lit8 v11, v11, 0x1

    const/16 v26, 0x8

    goto :goto_d

    :cond_18
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v3

    add-int/2addr v3, v14

    shl-int/2addr v3, v12

    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v7

    add-int/2addr v7, v14

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v7, :cond_1b

    invoke-virtual {v2, v3}, LI0/N;->t(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_19
    const-string v1, "Multiple audio presentations or assets not supported"

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v6, -0x1

    const/4 v9, 0x0

    :cond_1b
    invoke-virtual {v2, v4}, LI0/N;->t(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, LI0/N;->t(I)V

    if-eqz v5, :cond_1f

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v3

    if-eqz v3, :cond_1c

    move/from16 v3, v27

    invoke-virtual {v2, v3}, LI0/N;->t(I)V

    :cond_1c
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, LI0/N;->t(I)V

    :cond_1d
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, LI0/N;->i(I)I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v2, v3}, LI0/N;->u(I)V

    :cond_1e
    invoke-virtual {v2, v15}, LI0/N;->t(I)V

    sget-object v3, LI0/p;->d:[I

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, LI0/N;->i(I)I

    move-result v4

    aget v3, v3, v4

    const/16 v13, 0x8

    invoke-virtual {v2, v13}, LI0/N;->i(I)I

    move-result v2

    add-int/2addr v2, v14

    move/from16 v33, v2

    move/from16 v34, v3

    goto :goto_f

    :cond_1f
    const/16 v33, -0x1

    const v34, -0x7fffffff

    :goto_f
    if-eqz v5, :cond_23

    if-eqz v6, :cond_22

    if-eq v6, v14, :cond_21

    if-ne v6, v12, :cond_20

    const v8, 0xbb80

    goto :goto_10

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported reference clock code in DTS HD header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_21
    const v8, 0xac44

    goto :goto_10

    :cond_22
    const/16 v8, 0x7d00

    :goto_10
    int-to-long v2, v9

    int-to-long v4, v8

    sget v6, Lk0/C;->a:I

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v21, 0xf4240

    move-wide/from16 v19, v2

    move-wide/from16 v23, v4

    invoke-static/range {v19 .. v25}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    move-wide/from16 v36, v2

    goto :goto_11

    :cond_23
    move-wide/from16 v36, v17

    :goto_11
    new-instance v31, LI0/a;

    const-string v32, "audio/vnd.dts.hd;profile=lbr"

    invoke-direct/range {v31 .. v37}, LI0/a;-><init>(Ljava/lang/String;IIIJ)V

    move-object/from16 v2, v31

    move/from16 v5, v35

    invoke-virtual {v0, v2}, Lo1/h;->g(LI0/a;)V

    iput v5, v0, Lo1/h;->l:I

    cmp-long v2, v36, v17

    if-nez v2, :cond_24

    const-wide/16 v5, 0x0

    goto :goto_12

    :cond_24
    move-wide/from16 v5, v36

    :goto_12
    iput-wide v5, v0, Lo1/h;->j:J

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lk0/u;->G(I)V

    iget-object v2, v0, Lo1/h;->f:LI0/L;

    iget v3, v0, Lo1/h;->n:I

    invoke-interface {v2, v10, v3}, LI0/L;->sampleData(Lk0/u;I)V

    const/4 v2, 0x6

    iput v2, v0, Lo1/h;->g:I

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, v10, Lk0/u;->a:[B

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lo1/h;->a(Lk0/u;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lk0/u;->a:[B

    invoke-static {v2}, LI0/p;->a([B)LI0/N;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, LI0/N;->t(I)V

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v3

    if-eqz v3, :cond_25

    const/16 v3, 0xc

    goto :goto_13

    :cond_25
    const/16 v3, 0x8

    :goto_13
    invoke-virtual {v2, v3}, LI0/N;->i(I)I

    move-result v2

    add-int/2addr v2, v14

    iput v2, v0, Lo1/h;->n:I

    const/4 v2, 0x3

    iput v2, v0, Lo1/h;->g:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, v10, Lk0/u;->a:[B

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lo1/h;->a(Lk0/u;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lk0/u;->a:[B

    iget-object v4, v0, Lo1/h;->k:Landroidx/media3/common/Format;

    const/16 v5, 0x3c

    if-nez v4, :cond_28

    iget-object v4, v0, Lo1/h;->e:Ljava/lang/String;

    invoke-static {v2}, LI0/p;->a([B)LI0/N;

    move-result-object v7

    invoke-virtual {v7, v5}, LI0/N;->t(I)V

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, LI0/N;->i(I)I

    move-result v11

    sget-object v9, LI0/p;->a:[I

    aget v9, v9, v11

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, LI0/N;->i(I)I

    move-result v13

    sget-object v11, LI0/p;->b:[I

    aget v11, v11, v13

    invoke-virtual {v7, v15}, LI0/N;->i(I)I

    move-result v13

    move/from16 v16, v5

    const/16 v5, 0x1d

    if-lt v13, v5, :cond_26

    const/4 v5, -0x1

    :goto_14
    const/16 v13, 0xa

    goto :goto_15

    :cond_26
    sget-object v5, LI0/p;->c:[I

    aget v5, v5, v13

    mul-int/lit16 v5, v5, 0x3e8

    div-int/2addr v5, v12

    goto :goto_14

    :goto_15
    invoke-virtual {v7, v13}, LI0/N;->t(I)V

    invoke-virtual {v7, v12}, LI0/N;->i(I)I

    move-result v7

    if-lez v7, :cond_27

    move v7, v14

    goto :goto_16

    :cond_27
    const/4 v7, 0x0

    :goto_16
    add-int/2addr v9, v7

    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v7, v4}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    const-string v7, "audio/vnd.dts"

    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, v0, Lo1/h;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v0, Lo1/h;->d:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    iput-object v4, v0, Lo1/h;->k:Landroidx/media3/common/Format;

    iget-object v5, v0, Lo1/h;->f:LI0/L;

    invoke-interface {v5, v4}, LI0/L;->format(Landroidx/media3/common/Format;)V

    :goto_17
    const/16 v29, 0x0

    goto :goto_18

    :cond_28
    move/from16 v16, v5

    goto :goto_17

    :goto_18
    aget-byte v4, v2, v29

    const/16 v5, 0x1f

    const/4 v7, -0x2

    if-eq v4, v7, :cond_2b

    const/4 v8, -0x1

    if-eq v4, v8, :cond_2a

    if-eq v4, v5, :cond_29

    aget-byte v8, v2, v15

    const/16 v30, 0x3

    and-int/lit8 v8, v8, 0x3

    const/16 v25, 0xc

    shl-int/lit8 v8, v8, 0xc

    const/16 v28, 0x6

    aget-byte v9, v2, v28

    and-int/lit16 v9, v9, 0xff

    const/16 v27, 0x4

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    const/16 v23, 0x7

    aget-byte v9, v2, v23

    :goto_19
    and-int/lit16 v9, v9, 0xf0

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    add-int/2addr v8, v14

    const/4 v9, 0x0

    goto :goto_1b

    :cond_29
    const/16 v23, 0x7

    const/16 v27, 0x4

    const/16 v28, 0x6

    aget-byte v8, v2, v28

    const/16 v30, 0x3

    and-int/lit8 v8, v8, 0x3

    const/16 v25, 0xc

    shl-int/lit8 v8, v8, 0xc

    aget-byte v9, v2, v23

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    const/16 v26, 0x8

    aget-byte v9, v2, v26

    :goto_1a
    and-int/lit8 v9, v9, 0x3c

    shr-int/2addr v9, v12

    or-int/2addr v8, v9

    add-int/2addr v8, v14

    move v9, v14

    goto :goto_1b

    :cond_2a
    const/16 v23, 0x7

    aget-byte v8, v2, v23

    const/16 v30, 0x3

    and-int/lit8 v8, v8, 0x3

    const/16 v25, 0xc

    shl-int/lit8 v8, v8, 0xc

    const/16 v28, 0x6

    aget-byte v9, v2, v28

    and-int/lit16 v9, v9, 0xff

    const/16 v27, 0x4

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    const/16 v9, 0x9

    aget-byte v9, v2, v9

    goto :goto_1a

    :cond_2b
    const/16 v27, 0x4

    aget-byte v8, v2, v27

    const/16 v30, 0x3

    and-int/lit8 v8, v8, 0x3

    const/16 v25, 0xc

    shl-int/lit8 v8, v8, 0xc

    const/16 v23, 0x7

    aget-byte v9, v2, v23

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    const/16 v28, 0x6

    aget-byte v9, v2, v28

    goto :goto_19

    :goto_1b
    if-eqz v9, :cond_2c

    mul-int/lit8 v8, v8, 0x10

    div-int/lit8 v8, v8, 0xe

    :cond_2c
    iput v8, v0, Lo1/h;->l:I

    if-eq v4, v7, :cond_2f

    const/4 v8, -0x1

    if-eq v4, v8, :cond_2e

    if-eq v4, v5, :cond_2d

    const/16 v27, 0x4

    aget-byte v4, v2, v27

    and-int/2addr v4, v14

    const/16 v28, 0x6

    shl-int/lit8 v4, v4, 0x6

    aget-byte v2, v2, v15

    :goto_1c
    and-int/lit16 v2, v2, 0xfc

    :goto_1d
    shr-int/2addr v2, v12

    or-int/2addr v2, v4

    goto :goto_1f

    :cond_2d
    const/16 v27, 0x4

    const/16 v28, 0x6

    aget-byte v4, v2, v15

    const/16 v23, 0x7

    and-int/lit8 v4, v4, 0x7

    shl-int/lit8 v4, v4, 0x4

    aget-byte v2, v2, v28

    :goto_1e
    and-int/lit8 v2, v2, 0x3c

    goto :goto_1d

    :cond_2e
    const/16 v23, 0x7

    const/16 v27, 0x4

    aget-byte v4, v2, v27

    and-int/lit8 v4, v4, 0x7

    shl-int/lit8 v4, v4, 0x4

    aget-byte v2, v2, v23

    goto :goto_1e

    :cond_2f
    const/16 v27, 0x4

    aget-byte v4, v2, v15

    and-int/2addr v4, v14

    const/16 v28, 0x6

    shl-int/lit8 v4, v4, 0x6

    aget-byte v2, v2, v27

    goto :goto_1c

    :goto_1f
    add-int/2addr v2, v14

    mul-int/2addr v2, v6

    int-to-long v4, v2

    iget-object v2, v0, Lo1/h;->k:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v2, v4, v5}, Lk0/C;->W(IJ)J

    move-result-wide v4

    invoke-static {v4, v5}, La/a;->f(J)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lo1/h;->j:J

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lk0/u;->G(I)V

    iget-object v2, v0, Lo1/h;->f:LI0/L;

    invoke-interface {v2, v10, v3}, LI0/L;->sampleData(Lk0/u;I)V

    const/4 v2, 0x6

    iput v2, v0, Lo1/h;->g:I

    goto/16 :goto_0

    :cond_30
    :pswitch_6
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Lo1/h;->i:I

    const/16 v26, 0x8

    shl-int/lit8 v2, v2, 0x8

    iput v2, v0, Lo1/h;->i:I

    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Lo1/h;->i:I

    const v3, 0x7ffe8001

    if-eq v2, v3, :cond_38

    const v3, -0x180fe80

    if-eq v2, v3, :cond_38

    const v3, 0x1fffe800

    if-eq v2, v3, :cond_38

    const v3, -0xe0ff18

    if-ne v2, v3, :cond_31

    goto :goto_23

    :cond_31
    const v3, 0x64582025

    if-eq v2, v3, :cond_37

    const v3, 0x25205864

    if-ne v2, v3, :cond_32

    goto :goto_22

    :cond_32
    if-eq v2, v13, :cond_36

    const v3, -0xde4bec0

    if-ne v2, v3, :cond_33

    goto :goto_21

    :cond_33
    const v3, 0x71c442e8

    if-eq v2, v3, :cond_35

    const v3, -0x17bd3b8f

    if-ne v2, v3, :cond_34

    goto :goto_20

    :cond_34
    const/4 v3, 0x0

    goto :goto_24

    :cond_35
    :goto_20
    const/4 v3, 0x4

    goto :goto_24

    :cond_36
    :goto_21
    const/4 v3, 0x3

    goto :goto_24

    :cond_37
    :goto_22
    move v3, v12

    goto :goto_24

    :cond_38
    :goto_23
    move v3, v14

    :goto_24
    iput v3, v0, Lo1/h;->m:I

    if-eqz v3, :cond_30

    iget-object v4, v10, Lk0/u;->a:[B

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/16 v29, 0x0

    aput-byte v5, v4, v29

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v14

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v12

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v7, 0x3

    aput-byte v2, v4, v7

    const/4 v4, 0x4

    iput v4, v0, Lo1/h;->h:I

    const/4 v2, 0x0

    iput v2, v0, Lo1/h;->i:I

    if-eq v3, v7, :cond_3b

    if-ne v3, v4, :cond_39

    goto :goto_25

    :cond_39
    if-ne v3, v14, :cond_3a

    iput v14, v0, Lo1/h;->g:I

    goto/16 :goto_0

    :cond_3a
    iput v12, v0, Lo1/h;->g:I

    goto/16 :goto_0

    :cond_3b
    :goto_25
    iput v4, v0, Lo1/h;->g:I

    goto/16 :goto_0

    :cond_3c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iput-wide p2, p0, Lo1/h;->p:J

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 1

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v0, p2, Lo1/K;->e:Ljava/lang/String;

    iput-object v0, p0, Lo1/h;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lo1/K;->b()V

    iget p2, p2, Lo1/K;->d:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    iput-object p1, p0, Lo1/h;->f:LI0/L;

    return-void
.end method

.method public final g(LI0/a;)V
    .locals 4

    iget v0, p1, LI0/a;->b:I

    iget-object v1, p1, LI0/a;->a:Ljava/lang/String;

    iget p1, p1, LI0/a;->c:I

    const v2, -0x7fffffff

    if-eq v0, v2, :cond_3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lo1/h;->k:Landroidx/media3/common/Format;

    if-eqz v2, :cond_1

    iget v3, v2, Landroidx/media3/common/Format;->channelCount:I

    if-ne p1, v3, :cond_1

    iget v3, v2, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v0, v3, :cond_1

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    sget v3, Lk0/C;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lo1/h;->k:Landroidx/media3/common/Format;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lo1/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object v0, p0, Lo1/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget v0, p0, Lo1/h;->d:I

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lo1/h;->k:Landroidx/media3/common/Format;

    iget-object v0, p0, Lo1/h;->f:LI0/L;

    invoke-interface {v0, p1}, LI0/L;->format(Landroidx/media3/common/Format;)V

    :cond_3
    :goto_1
    return-void
.end method
