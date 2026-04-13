.class public final Ls0/n;
.super Ljava/lang/Object;


# instance fields
.field public final a:LE0/t;

.field public final b:LK1/c;

.field public final c:[I

.field public final d:I

.field public final e:Landroidx/media3/datasource/DataSource;

.field public final f:J

.field public final g:I

.field public final h:Ls0/q;

.field public final i:[Ls0/l;

.field public j:LD0/v;

.field public k:Lt0/c;

.field public l:I

.field public m:Landroidx/media3/exoplayer/source/b;

.field public n:Z


# direct methods
.method public constructor <init>(LB0/g;LE0/t;Lt0/c;LK1/c;I[ILD0/v;ILandroidx/media3/datasource/DataSource;JIZLjava/util/ArrayList;Ls0/q;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p2

    iput-object v6, v0, Ls0/n;->a:LE0/t;

    iput-object v1, v0, Ls0/n;->k:Lt0/c;

    iput-object v2, v0, Ls0/n;->b:LK1/c;

    move-object/from16 v6, p6

    iput-object v6, v0, Ls0/n;->c:[I

    iput-object v4, v0, Ls0/n;->j:LD0/v;

    iput v5, v0, Ls0/n;->d:I

    move-object/from16 v6, p9

    iput-object v6, v0, Ls0/n;->e:Landroidx/media3/datasource/DataSource;

    iput v3, v0, Ls0/n;->l:I

    move-wide/from16 v6, p10

    iput-wide v6, v0, Ls0/n;->f:J

    move/from16 v6, p12

    iput v6, v0, Ls0/n;->g:I

    move-object/from16 v11, p15

    iput-object v11, v0, Ls0/n;->h:Ls0/q;

    invoke-virtual {v1, v3}, Lt0/c;->d(I)J

    move-result-wide v12

    invoke-virtual {v0}, Ls0/n;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v4}, LD0/v;->length()I

    move-result v3

    new-array v3, v3, [Ls0/l;

    iput-object v3, v0, Ls0/n;->i:[Ls0/l;

    const/4 v3, 0x0

    move v15, v3

    :goto_0
    iget-object v6, v0, Ls0/n;->i:[Ls0/l;

    array-length v6, v6

    if-ge v15, v6, :cond_9

    invoke-interface {v4, v15}, LD0/v;->j(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lt0/m;

    iget-object v6, v14, Lt0/m;->q:Lp3/H;

    invoke-virtual {v2, v6}, LK1/c;->A(Ljava/util/List;)Lt0/b;

    move-result-object v6

    iget-object v7, v0, Ls0/n;->i:[Ls0/l;

    new-instance v16, Ls0/l;

    if-eqz v6, :cond_0

    :goto_1
    move-object/from16 v17, v6

    goto :goto_2

    :cond_0
    iget-object v6, v14, Lt0/m;->q:Lp3/H;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt0/b;

    goto :goto_1

    :goto_2
    iget-object v6, v14, Lt0/m;->b:Landroidx/media3/common/Format;

    move-object/from16 v8, p1

    check-cast v8, LB0/d;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v6, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v9, v8, LB0/d;->b:Z

    if-nez v9, :cond_1

    const/4 v6, 0x0

    move-object v3, v7

    :goto_3
    move-object v11, v6

    move-wide v7, v12

    goto/16 :goto_7

    :cond_1
    new-instance v9, Lf1/h;

    iget-object v8, v8, LB0/d;->a:Lx2/f;

    invoke-virtual {v8, v6}, Lx2/f;->k(Landroidx/media3/common/Format;)Lf1/m;

    move-result-object v8

    invoke-direct {v9, v8, v6}, Lf1/h;-><init>(Lf1/m;Landroidx/media3/common/Format;)V

    :goto_4
    move-object v0, v6

    move-object v3, v7

    goto :goto_6

    :cond_2
    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->isMatroska(Ljava/lang/String;)Z

    move-result v10

    const/4 v3, 0x1

    if-eqz v10, :cond_4

    iget-boolean v9, v8, LB0/d;->b:Z

    if-nez v9, :cond_3

    const/4 v3, 0x3

    :cond_3
    new-instance v9, La1/d;

    iget-object v8, v8, LB0/d;->a:Lx2/f;

    invoke-direct {v9, v8, v3}, La1/d;-><init>(Lf1/k;I)V

    goto :goto_4

    :cond_4
    const-string v10, "image/jpeg"

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v9, LM0/a;

    invoke-direct {v9, v3}, LM0/a;-><init>(I)V

    goto :goto_4

    :cond_5
    const-string v3, "image/png"

    invoke-static {v9, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v9, LM0/a;

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {v9, v3, v8}, LM0/a;-><init>(IB)V

    goto :goto_4

    :cond_6
    if-eqz p13, :cond_7

    const/4 v3, 0x4

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    iget-boolean v9, v8, LB0/d;->b:Z

    if-nez v9, :cond_8

    or-int/lit8 v3, v3, 0x20

    :cond_8
    move-object v9, v6

    new-instance v6, Lc1/i;

    iget-object v8, v8, LB0/d;->a:Lx2/f;

    move-object v10, v9

    const/4 v9, 0x0

    move-object v0, v8

    move v8, v3

    move-object v3, v7

    move-object v7, v0

    move-object v0, v10

    move-object/from16 v10, p14

    invoke-direct/range {v6 .. v11}, Lc1/i;-><init>(Lf1/k;ILk0/z;Ljava/util/List;Ls0/q;)V

    move-object v9, v6

    :goto_6
    new-instance v6, LB0/e;

    invoke-direct {v6, v9, v5, v0}, LB0/e;-><init>(LI0/q;ILandroidx/media3/common/Format;)V

    goto :goto_3

    :goto_7
    const-wide/16 v12, 0x0

    move-object v9, v14

    invoke-virtual {v9}, Lt0/m;->c()Ls0/i;

    move-result-object v14

    move-object/from16 v6, v16

    move-object/from16 v10, v17

    invoke-direct/range {v6 .. v14}, Ls0/l;-><init>(JLt0/m;Lt0/b;LB0/h;JLs0/i;)V

    aput-object v6, v3, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p15

    move-wide v12, v7

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Ls0/n;->k:Lt0/c;

    iget v1, p0, Ls0/n;->l:I

    invoke-virtual {v0, v1}, Lt0/c;->b(I)Lt0/h;

    move-result-object v0

    iget-object v0, v0, Lt0/h;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ls0/n;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/a;

    iget-object v5, v5, Lt0/a;->c:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final b(I)Ls0/l;
    .locals 13

    iget-object v0, p0, Ls0/n;->i:[Ls0/l;

    aget-object v1, v0, p1

    iget-object v2, v1, Ls0/l;->b:Lt0/m;

    iget-object v2, v2, Lt0/m;->q:Lp3/H;

    iget-object v3, p0, Ls0/n;->b:LK1/c;

    invoke-virtual {v3, v2}, LK1/c;->A(Ljava/util/List;)Lt0/b;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v2, v1, Ls0/l;->c:Lt0/b;

    invoke-virtual {v8, v2}, Lt0/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v4, Ls0/l;

    iget-wide v5, v1, Ls0/l;->e:J

    iget-object v7, v1, Ls0/l;->b:Lt0/m;

    iget-object v9, v1, Ls0/l;->a:LB0/h;

    iget-wide v10, v1, Ls0/l;->f:J

    iget-object v12, v1, Ls0/l;->d:Ls0/i;

    invoke-direct/range {v4 .. v12}, Ls0/l;-><init>(JLt0/m;Lt0/b;LB0/h;JLs0/i;)V

    aput-object v4, v0, p1

    return-object v4

    :cond_0
    return-object v1
.end method
