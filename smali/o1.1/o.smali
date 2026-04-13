.class public final Lo1/o;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# static fields
.field public static final l:[F


# instance fields
.field public final a:Lo1/M;

.field public final b:Lk0/u;

.field public final c:[Z

.field public final d:Lo1/m;

.field public final e:Lo1/z;

.field public f:Lo1/n;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:LI0/L;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lo1/o;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lo1/M;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/o;->a:Lo1/M;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lo1/o;->c:[Z

    new-instance p1, Lo1/m;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p1, Lo1/m;->e:[B

    iput-object p1, p0, Lo1/o;->d:Lo1/m;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/o;->k:J

    new-instance p1, Lo1/z;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/o;->e:Lo1/z;

    new-instance p1, Lk0/u;

    invoke-direct {p1}, Lk0/u;-><init>()V

    iput-object p1, p0, Lo1/o;->b:Lk0/u;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lo1/o;->c:[Z

    invoke-static {v0}, Ll0/n;->a([Z)V

    iget-object v0, p0, Lo1/o;->d:Lo1/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo1/m;->a:Z

    iput v1, v0, Lo1/m;->c:I

    iput v1, v0, Lo1/m;->b:I

    iget-object v0, p0, Lo1/o;->f:Lo1/n;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lo1/n;->b:Z

    iput-boolean v1, v0, Lo1/n;->c:Z

    iput-boolean v1, v0, Lo1/n;->d:Z

    const/4 v1, -0x1

    iput v1, v0, Lo1/n;->e:I

    :cond_0
    iget-object v0, p0, Lo1/o;->e:Lo1/z;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo1/z;->f()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo1/o;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/o;->k:J

    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo1/o;->f:Lo1/n;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v2, v0, Lo1/o;->i:LI0/L;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget v2, v1, Lk0/u;->b:I

    iget v3, v1, Lk0/u;->c:I

    iget-object v4, v1, Lk0/u;->a:[B

    iget-wide v5, v0, Lo1/o;->g:J

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lo1/o;->g:J

    iget-object v5, v0, Lo1/o;->i:LI0/L;

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, LI0/L;->sampleData(Lk0/u;I)V

    :goto_0
    iget-object v5, v0, Lo1/o;->c:[Z

    invoke-static {v4, v2, v3, v5}, Ll0/n;->b([BII[Z)I

    move-result v5

    iget-object v6, v0, Lo1/o;->d:Lo1/m;

    iget-object v7, v0, Lo1/o;->e:Lo1/z;

    if-ne v5, v3, :cond_2

    iget-boolean v1, v0, Lo1/o;->j:Z

    if-nez v1, :cond_0

    invoke-virtual {v6, v4, v2, v3}, Lo1/m;->a([BII)V

    :cond_0
    iget-object v1, v0, Lo1/o;->f:Lo1/n;

    invoke-virtual {v1, v4, v2, v3}, Lo1/n;->a([BII)V

    if-eqz v7, :cond_1

    invoke-virtual {v7, v4, v2, v3}, Lo1/z;->a([BII)V

    :cond_1
    return-void

    :cond_2
    iget-object v8, v1, Lk0/u;->a:[B

    add-int/lit8 v9, v5, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v10, v8, 0xff

    sub-int v11, v5, v2

    iget-boolean v12, v0, Lo1/o;->j:Z

    if-nez v12, :cond_19

    if-lez v11, :cond_3

    invoke-virtual {v6, v4, v2, v5}, Lo1/m;->a([BII)V

    :cond_3
    if-gez v11, :cond_4

    neg-int v12, v11

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    iget v15, v6, Lo1/m;->b:I

    if-eqz v15, :cond_17

    const-string v13, "H263Reader"

    const-string v14, "Unexpected start code value"

    move/from16 v16, v3

    const/4 v3, 0x1

    if-eq v15, v3, :cond_15

    const/4 v3, 0x2

    if-eq v15, v3, :cond_13

    const/4 v3, 0x4

    move/from16 v17, v9

    const/4 v9, 0x3

    if-eq v15, v9, :cond_11

    if-ne v15, v3, :cond_10

    const/16 v8, 0xb3

    if-eq v10, v8, :cond_6

    const/16 v8, 0xb5

    if-ne v10, v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_6
    :goto_2
    iget v8, v6, Lo1/m;->c:I

    sub-int/2addr v8, v12

    iput v8, v6, Lo1/m;->c:I

    const/4 v8, 0x0

    iput-boolean v8, v6, Lo1/m;->a:Z

    iget-object v8, v0, Lo1/o;->i:LI0/L;

    iget v9, v6, Lo1/m;->d:I

    iget-object v12, v0, Lo1/o;->h:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v6, Lo1/m;->e:[B

    iget v6, v6, Lo1/m;->c:I

    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    new-instance v14, LI0/N;

    array-length v15, v6

    invoke-direct {v14, v6, v15}, LI0/N;-><init>([BI)V

    invoke-virtual {v14, v9}, LI0/N;->u(I)V

    invoke-virtual {v14, v3}, LI0/N;->u(I)V

    invoke-virtual {v14}, LI0/N;->s()V

    const/16 v9, 0x8

    invoke-virtual {v14, v9}, LI0/N;->t(I)V

    invoke-virtual {v14}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v14, v3}, LI0/N;->t(I)V

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, LI0/N;->t(I)V

    :cond_7
    invoke-virtual {v14, v3}, LI0/N;->i(I)I

    move-result v3

    const-string v15, "Invalid aspect ratio"

    move-object/from16 v18, v6

    const/16 v6, 0xf

    if-ne v3, v6, :cond_9

    invoke-virtual {v14, v9}, LI0/N;->i(I)I

    move-result v3

    invoke-virtual {v14, v9}, LI0/N;->i(I)I

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v13, v15}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    int-to-float v3, v3

    int-to-float v9, v9

    div-float v15, v3, v9

    goto :goto_4

    :cond_9
    const/4 v9, 0x7

    if-ge v3, v9, :cond_a

    sget-object v9, Lo1/o;->l:[F

    aget v15, v9, v3

    goto :goto_4

    :cond_a
    invoke-static {v13, v15}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v14}, LI0/N;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x2

    invoke-virtual {v14, v3}, LI0/N;->t(I)V

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, LI0/N;->t(I)V

    invoke-virtual {v14}, LI0/N;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v14, v6}, LI0/N;->t(I)V

    invoke-virtual {v14}, LI0/N;->s()V

    invoke-virtual {v14, v6}, LI0/N;->t(I)V

    invoke-virtual {v14}, LI0/N;->s()V

    invoke-virtual {v14, v6}, LI0/N;->t(I)V

    invoke-virtual {v14}, LI0/N;->s()V

    const/4 v9, 0x3

    invoke-virtual {v14, v9}, LI0/N;->t(I)V

    const/16 v3, 0xb

    invoke-virtual {v14, v3}, LI0/N;->t(I)V

    invoke-virtual {v14}, LI0/N;->s()V

    invoke-virtual {v14, v6}, LI0/N;->t(I)V

    invoke-virtual {v14}, LI0/N;->s()V

    :cond_b
    const/4 v3, 0x2

    invoke-virtual {v14, v3}, LI0/N;->i(I)I

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "Unhandled video object layer shape"

    invoke-static {v13, v3}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v14}, LI0/N;->s()V

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, LI0/N;->i(I)I

    move-result v3

    invoke-virtual {v14}, LI0/N;->s()V

    invoke-virtual {v14}, LI0/N;->h()Z

    move-result v6

    if-eqz v6, :cond_f

    if-nez v3, :cond_d

    const-string v3, "Invalid vop_increment_time_resolution"

    invoke-static {v13, v3}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    :goto_5
    if-lez v3, :cond_e

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v14, v6}, LI0/N;->t(I)V

    :cond_f
    :goto_6
    invoke-virtual {v14}, LI0/N;->s()V

    const/16 v3, 0xd

    invoke-virtual {v14, v3}, LI0/N;->i(I)I

    move-result v6

    invoke-virtual {v14}, LI0/N;->s()V

    invoke-virtual {v14, v3}, LI0/N;->i(I)I

    move-result v3

    invoke-virtual {v14}, LI0/N;->s()V

    invoke-virtual {v14}, LI0/N;->s()V

    new-instance v9, Landroidx/media3/common/Format$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v9, v12}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    const-string v12, "video/mp4v-es"

    invoke-virtual {v9, v12}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    invoke-interface {v8, v3}, LI0/L;->format(Landroidx/media3/common/Format;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lo1/o;->j:Z

    goto :goto_8

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_11
    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0x20

    if-eq v8, v9, :cond_12

    invoke-static {v13, v14}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, v6, Lo1/m;->a:Z

    iput v8, v6, Lo1/m;->c:I

    iput v8, v6, Lo1/m;->b:I

    goto :goto_7

    :cond_12
    const/4 v8, 0x0

    iget v9, v6, Lo1/m;->c:I

    iput v9, v6, Lo1/m;->d:I

    iput v3, v6, Lo1/m;->b:I

    goto :goto_7

    :cond_13
    move/from16 v17, v9

    const/4 v8, 0x0

    const/16 v3, 0x1f

    if-le v10, v3, :cond_14

    invoke-static {v13, v14}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v6, Lo1/m;->a:Z

    iput v8, v6, Lo1/m;->c:I

    iput v8, v6, Lo1/m;->b:I

    goto :goto_7

    :cond_14
    const/4 v9, 0x3

    iput v9, v6, Lo1/m;->b:I

    goto :goto_7

    :cond_15
    move/from16 v17, v9

    const/16 v3, 0xb5

    const/4 v8, 0x0

    if-eq v10, v3, :cond_16

    invoke-static {v13, v14}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v6, Lo1/m;->a:Z

    iput v8, v6, Lo1/m;->c:I

    iput v8, v6, Lo1/m;->b:I

    goto :goto_7

    :cond_16
    const/4 v3, 0x2

    iput v3, v6, Lo1/m;->b:I

    goto :goto_7

    :cond_17
    move/from16 v16, v3

    move/from16 v17, v9

    const/4 v8, 0x0

    const/16 v3, 0xb0

    if-ne v10, v3, :cond_18

    const/4 v3, 0x1

    iput v3, v6, Lo1/m;->b:I

    iput-boolean v3, v6, Lo1/m;->a:Z

    :cond_18
    :goto_7
    sget-object v3, Lo1/m;->f:[B

    const/4 v9, 0x3

    invoke-virtual {v6, v3, v8, v9}, Lo1/m;->a([BII)V

    goto :goto_8

    :cond_19
    move/from16 v16, v3

    move/from16 v17, v9

    :goto_8
    iget-object v3, v0, Lo1/o;->f:Lo1/n;

    invoke-virtual {v3, v4, v2, v5}, Lo1/n;->a([BII)V

    if-eqz v7, :cond_1c

    if-lez v11, :cond_1a

    invoke-virtual {v7, v4, v2, v5}, Lo1/z;->a([BII)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_1a
    neg-int v2, v11

    :goto_9
    invoke-virtual {v7, v2}, Lo1/z;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v7, Lo1/z;->f:Ljava/lang/Object;

    check-cast v2, [B

    iget v3, v7, Lo1/z;->c:I

    invoke-static {v2, v3}, Ll0/n;->k([BI)I

    move-result v2

    sget v3, Lk0/C;->a:I

    iget-object v3, v7, Lo1/z;->f:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v6, v0, Lo1/o;->b:Lk0/u;

    invoke-virtual {v6, v3, v2}, Lk0/u;->E([BI)V

    iget-object v2, v0, Lo1/o;->a:Lo1/M;

    iget-wide v8, v0, Lo1/o;->k:J

    invoke-virtual {v2, v8, v9, v6}, Lo1/M;->a(JLk0/u;)V

    :cond_1b
    const/16 v2, 0xb2

    if-ne v10, v2, :cond_1c

    iget-object v2, v1, Lk0/u;->a:[B

    add-int/lit8 v3, v5, 0x2

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    invoke-virtual {v7, v10}, Lo1/z;->g(I)V

    goto :goto_a

    :cond_1c
    const/4 v3, 0x1

    :cond_1d
    :goto_a
    sub-int v2, v16, v5

    iget-wide v5, v0, Lo1/o;->g:J

    int-to-long v7, v2

    sub-long/2addr v5, v7

    iget-object v7, v0, Lo1/o;->f:Lo1/n;

    iget-boolean v8, v0, Lo1/o;->j:Z

    invoke-virtual {v7, v2, v8, v5, v6}, Lo1/n;->b(IZJ)V

    iget-object v2, v0, Lo1/o;->f:Lo1/n;

    iget-wide v5, v0, Lo1/o;->k:J

    iput v10, v2, Lo1/n;->e:I

    const/4 v8, 0x0

    iput-boolean v8, v2, Lo1/n;->d:Z

    const/16 v7, 0xb6

    if-eq v10, v7, :cond_1f

    const/16 v8, 0xb3

    if-ne v10, v8, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v8, 0x0

    goto :goto_c

    :cond_1f
    :goto_b
    move v8, v3

    :goto_c
    iput-boolean v8, v2, Lo1/n;->b:Z

    if-ne v10, v7, :cond_20

    move v14, v3

    goto :goto_d

    :cond_20
    const/4 v14, 0x0

    :goto_d
    iput-boolean v14, v2, Lo1/n;->c:Z

    const/4 v8, 0x0

    iput v8, v2, Lo1/n;->f:I

    iput-wide v5, v2, Lo1/n;->h:J

    move/from16 v3, v16

    move/from16 v2, v17

    goto/16 :goto_0
.end method

.method public final d(Z)V
    .locals 4

    iget-object v0, p0, Lo1/o;->f:Lo1/n;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo1/o;->f:Lo1/n;

    iget-wide v0, p0, Lo1/o;->g:J

    iget-boolean v2, p0, Lo1/o;->j:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v0, v1}, Lo1/n;->b(IZJ)V

    iget-object p1, p0, Lo1/o;->f:Lo1/n;

    iput-boolean v3, p1, Lo1/n;->b:Z

    iput-boolean v3, p1, Lo1/n;->c:Z

    iput-boolean v3, p1, Lo1/n;->d:Z

    const/4 v0, -0x1

    iput v0, p1, Lo1/n;->e:I

    :cond_0
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iput-wide p2, p0, Lo1/o;->k:J

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 2

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v0, p2, Lo1/K;->e:Ljava/lang/String;

    iput-object v0, p0, Lo1/o;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lo1/K;->b()V

    iget v0, p2, Lo1/K;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object v0

    iput-object v0, p0, Lo1/o;->i:LI0/L;

    new-instance v1, Lo1/n;

    invoke-direct {v1, v0}, Lo1/n;-><init>(LI0/L;)V

    iput-object v1, p0, Lo1/o;->f:Lo1/n;

    iget-object v0, p0, Lo1/o;->a:Lo1/M;

    invoke-virtual {v0, p1, p2}, Lo1/M;->b(LI0/s;Lo1/K;)V

    return-void
.end method
