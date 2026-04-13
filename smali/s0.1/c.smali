.class public final Ls0/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/C;
.implements Landroidx/media3/exoplayer/source/g0;
.implements LB0/k;


# static fields
.field public static final O:Ljava/util/regex/Pattern;

.field public static final P:Ljava/util/regex/Pattern;


# instance fields
.field public final A:Lh3/e;

.field public final B:Ls0/r;

.field public final C:Ljava/util/IdentityHashMap;

.field public final D:LA/d;

.field public final E:Lu0/m;

.field public F:Landroidx/media3/exoplayer/source/B;

.field public G:[LB0/l;

.field public H:[Ls0/o;

.field public I:Landroidx/media3/exoplayer/source/m;

.field public J:Lt0/c;

.field public K:I

.field public L:Ljava/util/List;

.field public M:Z

.field public N:J

.field public final b:I

.field public final q:Ls0/a;

.field public final r:Landroidx/media3/datasource/TransferListener;

.field public final s:Lu0/q;

.field public final t:LE0/m;

.field public final u:LK1/c;

.field public final v:J

.field public final w:LE0/t;

.field public final x:LE0/b;

.field public final y:Landroidx/media3/exoplayer/source/t0;

.field public final z:[Ls0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ls0/c;->O:Ljava/util/regex/Pattern;

    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ls0/c;->P:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILt0/c;LK1/c;ILs0/a;Landroidx/media3/datasource/TransferListener;Lu0/q;Lu0/m;LE0/m;LA/d;JLE0/t;LE0/b;Lh3/e;Ls0/e;Lq0/q;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p14

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move/from16 v6, p1

    iput v6, v0, Ls0/c;->b:I

    iput-object v1, v0, Ls0/c;->J:Lt0/c;

    move-object/from16 v6, p3

    iput-object v6, v0, Ls0/c;->u:LK1/c;

    iput v2, v0, Ls0/c;->K:I

    iput-object v3, v0, Ls0/c;->q:Ls0/a;

    move-object/from16 v6, p6

    iput-object v6, v0, Ls0/c;->r:Landroidx/media3/datasource/TransferListener;

    iput-object v4, v0, Ls0/c;->s:Lu0/q;

    move-object/from16 v6, p8

    iput-object v6, v0, Ls0/c;->E:Lu0/m;

    move-object/from16 v6, p9

    iput-object v6, v0, Ls0/c;->t:LE0/m;

    move-object/from16 v6, p10

    iput-object v6, v0, Ls0/c;->D:LA/d;

    move-wide/from16 v6, p11

    iput-wide v6, v0, Ls0/c;->v:J

    move-object/from16 v6, p13

    iput-object v6, v0, Ls0/c;->w:LE0/t;

    iput-object v5, v0, Ls0/c;->x:LE0/b;

    move-object/from16 v6, p15

    iput-object v6, v0, Ls0/c;->A:Lh3/e;

    const/4 v7, 0x1

    iput-boolean v7, v0, Ls0/c;->M:Z

    new-instance v8, Ls0/r;

    move-object/from16 v9, p16

    invoke-direct {v8, v1, v9, v5}, Ls0/r;-><init>(Lt0/c;Ls0/e;LE0/b;)V

    iput-object v8, v0, Ls0/c;->B:Ls0/r;

    const/4 v5, 0x0

    new-array v8, v5, [LB0/l;

    iput-object v8, v0, Ls0/c;->G:[LB0/l;

    new-array v8, v5, [Ls0/o;

    iput-object v8, v0, Ls0/c;->H:[Ls0/o;

    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v8, v0, Ls0/c;->C:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/media3/exoplayer/source/m;

    sget-object v8, Lp3/H;->q:Lp3/F;

    sget-object v8, Lp3/Y;->t:Lp3/Y;

    invoke-direct {v6, v8, v8}, Landroidx/media3/exoplayer/source/m;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v6, v0, Ls0/c;->I:Landroidx/media3/exoplayer/source/m;

    invoke-virtual {v1, v2}, Lt0/c;->b(I)Lt0/h;

    move-result-object v1

    iget-object v2, v1, Lt0/h;->d:Ljava/util/List;

    iput-object v2, v0, Ls0/c;->L:Ljava/util/List;

    iget-object v1, v1, Lt0/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-instance v8, Ljava/util/HashMap;

    invoke-static {v6}, Lp3/q;->a(I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10, v6}, Landroid/util/SparseArray;-><init>(I)V

    move v11, v5

    :goto_0
    if-ge v11, v6, :cond_0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt0/a;

    iget-wide v12, v12, Lt0/a;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v5

    :goto_1
    const/4 v12, -0x1

    if-ge v11, v6, :cond_6

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lt0/a;

    iget-object v14, v13, Lt0/a;->e:Ljava/util/List;

    iget-object v13, v13, Lt0/a;->f:Ljava/util/List;

    const-string v15, "http://dashif.org/guidelines/trickmode"

    invoke-static {v15, v14}, Ls0/c;->a(Ljava/lang/String;Ljava/util/List;)Lt0/f;

    move-result-object v14

    if-nez v14, :cond_1

    invoke-static {v15, v13}, Ls0/c;->a(Ljava/lang/String;Ljava/util/List;)Lt0/f;

    move-result-object v14

    :cond_1
    if-eqz v14, :cond_2

    iget-object v14, v14, Lt0/f;->b:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    if-ne v14, v11, :cond_4

    const-string v15, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-static {v15, v13}, Ls0/c;->a(Ljava/lang/String;Ljava/util/List;)Lt0/f;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v13, v13, Lt0/f;->b:Ljava/lang/String;

    sget v15, Lk0/C;->a:I

    const-string v15, ","

    invoke-virtual {v13, v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    move v15, v5

    :goto_3
    if-ge v15, v13, :cond_4

    aget-object v16, v12, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move/from16 p1, v7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v14, v7

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, p1

    goto :goto_3

    :cond_4
    move/from16 p1, v7

    if-eq v14, v11, :cond_5

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p1

    goto/16 :goto_1

    :cond_6
    move/from16 p1, v7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [[I

    move v8, v5

    :goto_4
    if-ge v8, v6, :cond_7

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-static {v10}, La/a;->O(Ljava/util/Collection;)[I

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v10}, Ljava/util/Arrays;->sort([I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    new-array v8, v6, [Z

    new-array v9, v6, [[Landroidx/media3/common/Format;

    move v10, v5

    move v11, v10

    :goto_5
    if-ge v10, v6, :cond_10

    aget-object v13, v7, v10

    array-length v14, v13

    move v15, v5

    :goto_6
    if-ge v15, v14, :cond_a

    aget v12, v13, v15

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt0/a;

    iget-object v12, v12, Lt0/a;->c:Ljava/util/List;

    move-object/from16 v16, v7

    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt0/m;

    iget-object v7, v7, Lt0/m;->s:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    aput-boolean p1, v8, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v16

    const/4 v5, 0x0

    const/4 v12, -0x1

    goto :goto_6

    :cond_a
    move-object/from16 v16, v7

    :goto_8
    aget-object v5, v16, v10

    array-length v7, v5

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v7, :cond_e

    aget v13, v5, v12

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lt0/a;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lt0/a;

    iget-object v13, v13, Lt0/a;->d:Ljava/util/List;

    move-object/from16 p4, v5

    const/4 v15, 0x0

    :goto_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_d

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/f;

    move/from16 v17, v7

    const-string v7, "urn:scte:dash:cc:cea-608:2015"

    move-object/from16 p6, v8

    iget-object v8, v5, Lt0/f;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v8, "application/cea-608"

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v14, Lt0/a;->a:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ":cea608"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    sget-object v8, Ls0/c;->O:Ljava/util/regex/Pattern;

    invoke-static {v5, v8, v7}, Ls0/c;->j(Lt0/f;Ljava/util/regex/Pattern;Landroidx/media3/common/Format;)[Landroidx/media3/common/Format;

    move-result-object v5

    goto :goto_b

    :cond_b
    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    iget-object v8, v5, Lt0/f;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v8, "application/cea-708"

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v14, Lt0/a;->a:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ":cea708"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    sget-object v8, Ls0/c;->P:Ljava/util/regex/Pattern;

    invoke-static {v5, v8, v7}, Ls0/c;->j(Lt0/f;Ljava/util/regex/Pattern;Landroidx/media3/common/Format;)[Landroidx/media3/common/Format;

    move-result-object v5

    goto :goto_b

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, p6

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_d
    move/from16 v17, v7

    move-object/from16 p6, v8

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p4

    goto/16 :goto_9

    :cond_e
    move-object/from16 p6, v8

    const/4 v5, 0x0

    new-array v7, v5, [Landroidx/media3/common/Format;

    move-object v5, v7

    :goto_b
    aput-object v5, v9, v10

    array-length v5, v5

    if-eqz v5, :cond_f

    add-int/lit8 v11, v11, 0x1

    :cond_f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, p6

    move-object/from16 v7, v16

    const/4 v5, 0x0

    const/4 v12, -0x1

    goto/16 :goto_5

    :cond_10
    move-object/from16 v16, v7

    move-object/from16 p6, v8

    add-int/2addr v11, v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v11

    new-array v7, v5, [Landroidx/media3/common/TrackGroup;

    new-array v5, v5, [Ls0/b;

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_c
    const-string v11, "application/x-emsg"

    if-ge v8, v6, :cond_18

    aget-object v12, v16, v8

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    array-length v14, v12

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v14, :cond_11

    move/from16 p1, v6

    aget v6, v12, v15

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt0/a;

    iget-object v6, v6, Lt0/a;->c:Ljava/util/List;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, p1

    goto :goto_d

    :cond_11
    move/from16 p1, v6

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Landroidx/media3/common/Format;

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v6, :cond_12

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 p4, v6

    move-object/from16 v6, v17

    check-cast v6, Lt0/m;

    iget-object v6, v6, Lt0/m;->b:Landroidx/media3/common/Format;

    move-object/from16 v17, v9

    invoke-virtual {v6}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v9

    invoke-interface {v4, v6}, Lu0/q;->d(Landroidx/media3/common/Format;)I

    move-result v6

    invoke-virtual {v9, v6}, Landroidx/media3/common/Format$Builder;->setCryptoType(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v6

    aput-object v6, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, p4

    move-object/from16 v9, v17

    goto :goto_e

    :cond_12
    move-object/from16 v17, v9

    const/4 v6, 0x0

    aget v9, v12, v6

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt0/a;

    move/from16 p12, v10

    iget-wide v9, v6, Lt0/a;->a:J

    const-wide/16 v18, -0x1

    cmp-long v13, v9, v18

    if-eqz v13, :cond_13

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    :cond_13
    const-string v9, "unset:"

    invoke-static {v8, v9}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_f
    add-int/lit8 v10, p12, 0x1

    aget-boolean v13, p6, v8

    if-eqz v13, :cond_14

    add-int/lit8 v13, p12, 0x2

    goto :goto_10

    :cond_14
    move v13, v10

    const/4 v10, -0x1

    :goto_10
    aget-object v15, v17, v8

    array-length v15, v15

    if-eqz v15, :cond_15

    add-int/lit8 v15, v13, 0x1

    goto :goto_11

    :cond_15
    move v15, v13

    const/4 v13, -0x1

    :goto_11
    invoke-static {v3, v14}, Ls0/c;->g(Ls0/a;[Landroidx/media3/common/Format;)V

    move-object/from16 v18, v1

    new-instance v1, Landroidx/media3/common/TrackGroup;

    invoke-direct {v1, v9, v14}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v1, v7, p12

    iget v1, v6, Lt0/a;->b:I

    new-instance v6, Ls0/b;

    sget-object v14, Lp3/H;->q:Lp3/F;

    sget-object v14, Lp3/Y;->t:Lp3/Y;

    const/16 v19, 0x0

    const/16 v20, -0x1

    move/from16 p9, v1

    move-object/from16 p8, v6

    move/from16 p13, v10

    move-object/from16 p11, v12

    move/from16 p14, v13

    move-object/from16 p16, v14

    move/from16 p10, v19

    move/from16 p15, v20

    invoke-direct/range {p8 .. p16}, Ls0/b;-><init>(II[IIIIILp3/H;)V

    move-object/from16 v12, p8

    move-object/from16 v6, p11

    move/from16 v1, p12

    aput-object v12, v5, v1

    const/4 v12, -0x1

    if-eq v10, v12, :cond_16

    const-string v12, ":emsg"

    invoke-static {v9, v12}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move/from16 p12, v1

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v1, v12}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    new-instance v11, Landroidx/media3/common/TrackGroup;

    filled-new-array {v1}, [Landroidx/media3/common/Format;

    move-result-object v1

    invoke-direct {v11, v12, v1}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v11, v7, v10

    new-instance v1, Ls0/b;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v21, -0x1

    move-object/from16 p8, v1

    move-object/from16 p11, v6

    move/from16 p14, v11

    move/from16 p15, v12

    move-object/from16 p16, v14

    move/from16 p9, v19

    move/from16 p10, v20

    move/from16 p13, v21

    invoke-direct/range {p8 .. p16}, Ls0/b;-><init>(II[IIIIILp3/H;)V

    move-object/from16 v11, p8

    move/from16 v1, p12

    aput-object v11, v5, v10

    const/4 v12, -0x1

    :cond_16
    if-eq v13, v12, :cond_17

    const-string v10, ":cc"

    invoke-static {v9, v10}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v17, v8

    invoke-static {v10}, Lp3/H;->k([Ljava/lang/Object;)Lp3/Y;

    move-result-object v10

    new-instance v11, Ls0/b;

    const/4 v14, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x3

    const/16 v21, 0x1

    const/16 v22, -0x1

    move/from16 p12, v1

    move-object/from16 p11, v6

    move-object/from16 p16, v10

    move-object/from16 p8, v11

    move/from16 p14, v14

    move/from16 p15, v19

    move/from16 p9, v20

    move/from16 p10, v21

    move/from16 p13, v22

    invoke-direct/range {p8 .. p16}, Ls0/b;-><init>(II[IIIIILp3/H;)V

    move-object/from16 v1, p8

    aput-object v1, v5, v13

    aget-object v1, v17, v8

    invoke-static {v3, v1}, Ls0/c;->g(Ls0/a;[Landroidx/media3/common/Format;)V

    new-instance v1, Landroidx/media3/common/TrackGroup;

    aget-object v6, v17, v8

    invoke-direct {v1, v9, v6}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v1, v7, v13

    :cond_17
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, p1

    move v10, v15

    move-object/from16 v9, v17

    move-object/from16 v1, v18

    goto/16 :goto_c

    :cond_18
    move v1, v10

    const/4 v1, 0x0

    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_19

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt0/g;

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v3}, Lt0/g;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lt0/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroidx/media3/common/TrackGroup;

    filled-new-array {v4}, [Landroidx/media3/common/Format;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v6, v7, v10

    add-int/lit8 v3, v10, 0x1

    new-instance v4, Ls0/b;

    const/4 v6, 0x0

    new-array v8, v6, [I

    sget-object v9, Lp3/H;->q:Lp3/F;

    sget-object v9, Lp3/Y;->t:Lp3/Y;

    const/4 v12, 0x5

    const/4 v13, 0x2

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    move/from16 p14, v1

    move-object/from16 p7, v4

    move-object/from16 p10, v8

    move-object/from16 p15, v9

    move/from16 p8, v12

    move/from16 p9, v13

    move/from16 p11, v14

    move/from16 p12, v15

    move/from16 p13, v16

    invoke-direct/range {p7 .. p15}, Ls0/b;-><init>(II[IIIIILp3/H;)V

    aput-object v4, v5, v10

    add-int/lit8 v1, v1, 0x1

    move v10, v3

    goto :goto_12

    :cond_19
    new-instance v1, Landroidx/media3/exoplayer/source/t0;

    invoke-direct {v1, v7}, Landroidx/media3/exoplayer/source/t0;-><init>([Landroidx/media3/common/TrackGroup;)V

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/t0;

    iput-object v2, v0, Ls0/c;->y:Landroidx/media3/exoplayer/source/t0;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ls0/b;

    iput-object v1, v0, Ls0/c;->z:[Ls0/b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lt0/f;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt0/f;

    iget-object v2, v1, Lt0/f;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ls0/a;[Landroidx/media3/common/Format;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    move-object v2, p0

    check-cast v2, Ls0/k;

    iget-object v2, v2, Ls0/k;->c:LB0/d;

    iget-boolean v3, v2, LB0/d;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, LB0/d;->a:Lx2/f;

    invoke-virtual {v3, v1}, Lx2/f;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    const-string v4, "application/x-media3-cues"

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v2, v2, LB0/d;->a:Lx2/f;

    invoke-virtual {v2, v1}, Lx2/f;->c(Landroidx/media3/common/Format;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    :cond_1
    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static j(Lt0/f;Ljava/util/regex/Pattern;Landroidx/media3/common/Format;)[Landroidx/media3/common/Format;
    .locals 7

    iget-object p0, p0, Lt0/f;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    filled-new-array {p2}, [Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0

    :cond_0
    sget v0, Lk0/C;->a:I

    const/4 v0, -0x1

    const-string v1, ";"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Landroidx/media3/common/Format;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    filled-new-array {p2}, [Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final b([II)I
    .locals 4

    aget p2, p1, p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ls0/c;->z:[Ls0/b;

    aget-object p2, v1, p2

    iget p2, p2, Ls0/b;->e:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget v3, p1, v2

    if-ne v3, p2, :cond_1

    aget-object v3, v1, v3

    iget v3, v3, Ls0/b;->c:I

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 1

    iget-object v0, p0, Ls0/c;->I:Landroidx/media3/exoplayer/source/m;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/m;->c(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Ls0/c;->I:Landroidx/media3/exoplayer/source/m;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/m;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J
    .locals 35

    move-object/from16 v5, p0

    move-object/from16 v14, p1

    array-length v0, v14

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v14

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    aget-object v3, v14, v2

    if-eqz v3, :cond_0

    iget-object v4, v5, Ls0/c;->y:Landroidx/media3/exoplayer/source/t0;

    invoke-interface {v3}, LD0/v;->d()Landroidx/media3/common/TrackGroup;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/source/t0;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_1

    :cond_0
    aput v4, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_2
    array-length v3, v14

    const/16 v16, 0x0

    if-ge v2, v3, :cond_6

    aget-object v3, v14, v2

    if-eqz v3, :cond_2

    aget-boolean v3, p2, v2

    if-nez v3, :cond_5

    :cond_2
    aget-object v3, p3, v2

    instance-of v6, v3, LB0/l;

    if-eqz v6, :cond_3

    check-cast v3, LB0/l;

    invoke-virtual {v3, v5}, LB0/l;->z(Ls0/c;)V

    goto :goto_3

    :cond_3
    instance-of v6, v3, LB0/j;

    if-eqz v6, :cond_4

    check-cast v3, LB0/j;

    iget-object v6, v3, LB0/j;->t:LB0/l;

    iget-object v7, v6, LB0/l;->s:[Z

    iget v3, v3, LB0/j;->r:I

    aget-boolean v7, v7, v3

    invoke-static {v7}, Lk0/c;->j(Z)V

    iget-object v6, v6, LB0/l;->s:[Z

    aput-boolean v1, v6, v3

    :cond_4
    :goto_3
    aput-object v16, p3, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_4
    array-length v3, v14

    const/4 v6, 0x1

    if-ge v2, v3, :cond_c

    aget-object v3, p3, v2

    instance-of v7, v3, Landroidx/media3/exoplayer/source/s;

    if-nez v7, :cond_7

    instance-of v3, v3, LB0/j;

    if-eqz v3, :cond_b

    :cond_7
    invoke-virtual {v5, v0, v2}, Ls0/c;->b([II)I

    move-result v3

    if-ne v3, v4, :cond_8

    aget-object v3, p3, v2

    instance-of v3, v3, Landroidx/media3/exoplayer/source/s;

    goto :goto_6

    :cond_8
    aget-object v7, p3, v2

    instance-of v8, v7, LB0/j;

    if-eqz v8, :cond_9

    check-cast v7, LB0/j;

    iget-object v7, v7, LB0/j;->b:LB0/l;

    aget-object v3, p3, v3

    if-ne v7, v3, :cond_9

    goto :goto_5

    :cond_9
    move v6, v1

    :goto_5
    move v3, v6

    :goto_6
    if-nez v3, :cond_b

    aget-object v3, p3, v2

    instance-of v6, v3, LB0/j;

    if-eqz v6, :cond_a

    check-cast v3, LB0/j;

    iget-object v6, v3, LB0/j;->t:LB0/l;

    iget-object v7, v6, LB0/l;->s:[Z

    iget v3, v3, LB0/j;->r:I

    aget-boolean v7, v7, v3

    invoke-static {v7}, Lk0/c;->j(Z)V

    iget-object v6, v6, LB0/l;->s:[Z

    aput-boolean v1, v6, v3

    :cond_a
    aput-object v16, p3, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    move v2, v1

    :goto_7
    array-length v3, v14

    if-ge v2, v3, :cond_18

    aget-object v24, v14, v2

    if-nez v24, :cond_d

    move-object/from16 v34, v0

    move/from16 v17, v2

    move-wide/from16 v0, p5

    goto/16 :goto_e

    :cond_d
    aget-object v3, p3, v2

    if-nez v3, :cond_16

    aput-boolean v6, p4, v2

    aget v3, v0, v2

    iget-object v7, v5, Ls0/c;->z:[Ls0/b;

    aget-object v3, v7, v3

    iget v7, v3, Ls0/b;->c:I

    if-nez v7, :cond_15

    iget v7, v3, Ls0/b;->f:I

    if-eq v7, v4, :cond_e

    move/from16 v30, v6

    goto :goto_8

    :cond_e
    move/from16 v30, v1

    :goto_8
    if-eqz v30, :cond_f

    iget-object v8, v5, Ls0/c;->y:Landroidx/media3/exoplayer/source/t0;

    invoke-virtual {v8, v7}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v7

    move v8, v6

    goto :goto_9

    :cond_f
    move v8, v1

    move-object/from16 v7, v16

    :goto_9
    iget v9, v3, Ls0/b;->g:I

    if-eq v9, v4, :cond_10

    iget-object v10, v5, Ls0/c;->z:[Ls0/b;

    aget-object v9, v10, v9

    iget-object v9, v9, Ls0/b;->h:Lp3/H;

    goto :goto_a

    :cond_10
    sget-object v9, Lp3/H;->q:Lp3/F;

    sget-object v9, Lp3/Y;->t:Lp3/Y;

    :goto_a
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    add-int/2addr v10, v8

    new-array v8, v10, [Landroidx/media3/common/Format;

    new-array v10, v10, [I

    if-eqz v30, :cond_11

    invoke-virtual {v7, v1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v7

    aput-object v7, v8, v1

    const/4 v7, 0x5

    aput v7, v10, v1

    move v7, v6

    goto :goto_b

    :cond_11
    move v7, v1

    :goto_b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v1

    :goto_c
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v13

    if-ge v12, v13, :cond_12

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/common/Format;

    aput-object v13, v8, v7

    const/16 v17, 0x3

    aput v17, v10, v7

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_12
    iget-object v7, v5, Ls0/c;->J:Lt0/c;

    iget-boolean v7, v7, Lt0/c;->d:Z

    if-eqz v7, :cond_13

    if-eqz v30, :cond_13

    iget-object v7, v5, Ls0/c;->B:Ls0/r;

    new-instance v9, Ls0/q;

    iget-object v12, v7, Ls0/r;->b:LE0/b;

    invoke-direct {v9, v7, v12}, Ls0/q;-><init>(Ls0/r;LE0/b;)V

    move-object/from16 v32, v9

    goto :goto_d

    :cond_13
    move-object/from16 v32, v16

    :goto_d
    iget-object v7, v5, Ls0/c;->q:Ls0/a;

    iget-object v9, v5, Ls0/c;->w:LE0/t;

    iget-object v12, v5, Ls0/c;->J:Lt0/c;

    iget-object v13, v5, Ls0/c;->u:LK1/c;

    iget v1, v5, Ls0/c;->K:I

    iget-object v4, v3, Ls0/b;->a:[I

    iget v6, v3, Ls0/b;->b:I

    move-object/from16 v33, v0

    move/from16 v22, v1

    iget-wide v0, v5, Ls0/c;->v:J

    move-wide/from16 v27, v0

    iget-object v0, v5, Ls0/c;->r:Landroidx/media3/datasource/TransferListener;

    check-cast v7, Ls0/k;

    iget-object v1, v7, Ls0/k;->a:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v1

    if-eqz v0, :cond_14

    invoke-interface {v1, v0}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_14
    new-instance v17, Ls0/n;

    iget-object v0, v7, Ls0/k;->c:LB0/d;

    iget v7, v7, Ls0/k;->b:I

    move-object/from16 v18, v0

    move-object/from16 v26, v1

    move-object/from16 v23, v4

    move/from16 v25, v6

    move/from16 v29, v7

    move-object/from16 v19, v9

    move-object/from16 v31, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-direct/range {v17 .. v32}, Ls0/n;-><init>(LB0/g;LE0/t;Lt0/c;LK1/c;I[ILD0/v;ILandroidx/media3/datasource/DataSource;JIZLjava/util/ArrayList;Ls0/q;)V

    new-instance v0, LB0/l;

    iget v1, v3, Ls0/b;->b:I

    iget-object v6, v5, Ls0/c;->x:LE0/b;

    iget-object v9, v5, Ls0/c;->s:Lu0/q;

    move v3, v2

    move-object v2, v10

    iget-object v10, v5, Ls0/c;->E:Lu0/m;

    iget-object v11, v5, Ls0/c;->t:LE0/m;

    iget-object v12, v5, Ls0/c;->D:LA/d;

    iget-boolean v13, v5, Ls0/c;->M:Z

    move-object/from16 v4, v17

    move-object/from16 v15, v32

    move-object/from16 v34, v33

    move/from16 v17, v3

    move-object v3, v8

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v13}, LB0/l;-><init>(I[I[Landroidx/media3/common/Format;Ls0/n;Ls0/c;LE0/b;JLu0/q;Lu0/m;LE0/m;LA/d;Z)V

    move-object v2, v0

    move-wide v0, v7

    monitor-enter p0

    :try_start_0
    iget-object v3, v5, Ls0/c;->C:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v2, p3, v17

    goto :goto_e

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_15
    move-object/from16 v34, v0

    move/from16 v17, v2

    move-object/from16 v2, v24

    move-wide/from16 v0, p5

    const/4 v4, 0x2

    if-ne v7, v4, :cond_17

    iget-object v4, v5, Ls0/c;->L:Ljava/util/List;

    iget v3, v3, Ls0/b;->d:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt0/g;

    invoke-interface {v2}, LD0/v;->d()Landroidx/media3/common/TrackGroup;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v2

    new-instance v4, Ls0/o;

    iget-object v6, v5, Ls0/c;->J:Lt0/c;

    iget-boolean v6, v6, Lt0/c;->d:Z

    invoke-direct {v4, v3, v2, v6}, Ls0/o;-><init>(Lt0/g;Landroidx/media3/common/Format;Z)V

    aput-object v4, p3, v17

    goto :goto_e

    :cond_16
    move-object/from16 v34, v0

    move/from16 v17, v2

    move-object/from16 v2, v24

    move-wide/from16 v0, p5

    instance-of v4, v3, LB0/l;

    if-eqz v4, :cond_17

    check-cast v3, LB0/l;

    iget-object v3, v3, LB0/l;->t:Ls0/n;

    iput-object v2, v3, Ls0/n;->j:LD0/v;

    :cond_17
    :goto_e
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, v34

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_18
    move-object/from16 v34, v0

    move-wide/from16 v0, p5

    const/4 v2, 0x0

    :goto_f
    array-length v3, v14

    if-ge v2, v3, :cond_1e

    aget-object v3, p3, v2

    if-nez v3, :cond_1d

    aget-object v3, v14, v2

    if-eqz v3, :cond_1d

    move-object/from16 v3, v34

    aget v4, v3, v2

    iget-object v6, v5, Ls0/c;->z:[Ls0/b;

    aget-object v4, v6, v4

    iget v6, v4, Ls0/b;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c

    invoke-virtual {v5, v3, v2}, Ls0/c;->b([II)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_19

    new-instance v4, Landroidx/media3/exoplayer/source/s;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    aput-object v4, p3, v2

    goto :goto_12

    :cond_19
    aget-object v6, p3, v6

    check-cast v6, LB0/l;

    iget v4, v4, Ls0/b;->b:I

    iget-object v9, v6, LB0/l;->s:[Z

    iget-object v10, v6, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    const/4 v11, 0x0

    :goto_10
    array-length v12, v10

    if-ge v11, v12, :cond_1b

    iget-object v12, v6, LB0/l;->q:[I

    aget v12, v12, v11

    if-ne v12, v4, :cond_1a

    aget-boolean v4, v9, v11

    xor-int/2addr v4, v7

    invoke-static {v4}, Lk0/c;->j(Z)V

    aput-boolean v7, v9, v11

    aget-object v4, v10, v11

    invoke-virtual {v4, v0, v1, v7}, Landroidx/media3/exoplayer/source/e0;->seekTo(JZ)Z

    new-instance v4, LB0/j;

    aget-object v9, v10, v11

    invoke-direct {v4, v6, v6, v9, v11}, LB0/j;-><init>(LB0/l;LB0/l;Landroidx/media3/exoplayer/source/e0;I)V

    aput-object v4, p3, v2

    goto :goto_12

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    :goto_11
    const/4 v8, -0x1

    goto :goto_12

    :cond_1d
    move-object/from16 v3, v34

    const/4 v7, 0x1

    goto :goto_11

    :goto_12
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v34, v3

    goto :goto_f

    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, p3

    array-length v4, v15

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v4, :cond_21

    aget-object v7, v15, v6

    instance-of v8, v7, LB0/l;

    if-eqz v8, :cond_1f

    check-cast v7, LB0/l;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1f
    instance-of v8, v7, Ls0/o;

    if-eqz v8, :cond_20

    check-cast v7, Ls0/o;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [LB0/l;

    iput-object v4, v5, Ls0/c;->G:[LB0/l;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ls0/o;

    iput-object v4, v5, Ls0/c;->H:[Ls0/o;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, v5, Ls0/c;->A:Lh3/e;

    new-instance v4, Lq0/h;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Lq0/h;-><init>(I)V

    invoke-static {v2, v4}, Lp3/q;->v(Ljava/util/List;Lo3/d;)Ljava/util/AbstractList;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/media3/exoplayer/source/m;

    invoke-direct {v3, v2, v4}, Landroidx/media3/exoplayer/source/m;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v3, v5, Ls0/c;->I:Landroidx/media3/exoplayer/source/m;

    iget-boolean v2, v5, Ls0/c;->M:Z

    if-eqz v2, :cond_22

    const/4 v4, 0x0

    iput-boolean v4, v5, Ls0/c;->M:Z

    iput-wide v0, v5, Ls0/c;->N:J

    :cond_22
    return-wide v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ls0/c;->w:LE0/t;

    invoke-interface {v0}, LE0/t;->a()V

    return-void
.end method

.method public final h(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 19

    move-wide/from16 v1, p1

    move-object/from16 v7, p0

    iget-object v0, v7, Ls0/c;->G:[LB0/l;

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v0, v5

    iget v8, v6, LB0/l;->b:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    iget-object v0, v6, LB0/l;->t:Ls0/n;

    iget-object v0, v0, Ls0/n;->i:[Ls0/l;

    array-length v3, v0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    iget-object v6, v5, Ls0/l;->d:Ls0/i;

    iget-wide v8, v5, Ls0/l;->f:J

    iget-object v10, v5, Ls0/l;->d:Ls0/i;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ls0/l;->d()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-nez v6, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {v10}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v3, v5, Ls0/l;->e:J

    invoke-interface {v10, v1, v2, v3, v4}, Ls0/i;->x(JJ)J

    move-result-wide v3

    add-long/2addr v3, v8

    move-wide v13, v3

    invoke-virtual {v5, v13, v14}, Ls0/l;->f(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    const-wide/16 v15, -0x1

    cmp-long v0, v11, v15

    const-wide/16 v15, 0x1

    if-eqz v0, :cond_1

    invoke-static {v10}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v10}, Ls0/i;->G()J

    move-result-wide v17

    add-long v17, v17, v8

    add-long v17, v17, v11

    sub-long v17, v17, v15

    cmp-long v0, v13, v17

    if-gez v0, :cond_2

    :cond_1
    add-long v8, v13, v15

    invoke-virtual {v5, v8, v9}, Ls0/l;->f(J)J

    move-result-wide v5

    :goto_2
    move-object/from16 v0, p3

    goto :goto_3

    :cond_2
    move-wide v5, v3

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v1, p1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v1, p1

    goto :goto_0

    :cond_5
    return-wide p1
.end method

.method public final i(J)J
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Ls0/c;->G:[LB0/l;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_b

    aget-object v10, v3, v6

    iget-object v11, v10, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    iget-object v12, v10, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    iget-object v13, v10, LB0/l;->x:LE0/s;

    iget-object v14, v10, LB0/l;->z:Ljava/util/ArrayList;

    iput-wide v1, v10, LB0/l;->I:J

    iput-boolean v5, v10, LB0/l;->L:Z

    invoke-virtual {v10}, LB0/l;->w()Z

    move-result v15

    if-eqz v15, :cond_0

    iput-wide v1, v10, LB0/l;->H:J

    move v9, v5

    move/from16 v18, v6

    goto/16 :goto_9

    :cond_0
    move v15, v5

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v15, v7, :cond_3

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LB0/a;

    iget-wide v8, v7, LB0/f;->v:J

    cmp-long v8, v8, v1

    move/from16 v18, v6

    if-nez v8, :cond_1

    iget-wide v5, v7, LB0/a;->z:J

    cmp-long v5, v5, v16

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    if-lez v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v18

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move/from16 v18, v6

    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, LB0/a;->c(I)I

    move-result v5

    invoke-virtual {v12, v5}, Landroidx/media3/exoplayer/source/e0;->seekTo(I)Z

    move-result v5

    goto :goto_5

    :cond_4
    invoke-virtual {v10}, LB0/l;->d()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v12, v1, v2, v5}, Landroidx/media3/exoplayer/source/e0;->seekTo(JZ)Z

    move-result v5

    :goto_5
    if-eqz v5, :cond_7

    invoke-virtual {v12}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v10, v5, v9}, LB0/l;->y(II)I

    move-result v5

    iput v5, v10, LB0/l;->J:I

    array-length v5, v11

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_6

    aget-object v7, v11, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v2, v8}, Landroidx/media3/exoplayer/source/e0;->seekTo(JZ)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    goto :goto_9

    :cond_7
    iput-wide v1, v10, LB0/l;->H:J

    const/4 v9, 0x0

    iput-boolean v9, v10, LB0/l;->N:Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    iput v9, v10, LB0/l;->J:I

    invoke-virtual {v13}, LE0/s;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v12}, Landroidx/media3/exoplayer/source/e0;->discardToEnd()V

    array-length v5, v11

    move v6, v9

    :goto_7
    if-ge v6, v5, :cond_8

    aget-object v7, v11, v6

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/e0;->discardToEnd()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v13}, LE0/s;->b()V

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    iput-object v5, v13, LE0/s;->r:Ljava/io/IOException;

    invoke-virtual {v12}, Landroidx/media3/exoplayer/source/e0;->reset()V

    iget-object v5, v10, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    array-length v6, v5

    move v7, v9

    :goto_8
    if-ge v7, v6, :cond_a

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/e0;->reset()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    add-int/lit8 v6, v18, 0x1

    move v5, v9

    goto/16 :goto_0

    :cond_b
    move v9, v5

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v3, v0, Ls0/c;->H:[Ls0/o;

    array-length v4, v3

    :goto_a
    if-ge v5, v4, :cond_d

    aget-object v6, v3, v5

    iget-object v7, v6, Ls0/o;->r:[J

    const/4 v8, 0x1

    invoke-static {v7, v1, v2, v8}, Lk0/C;->a([JJZ)I

    move-result v7

    iput v7, v6, Ls0/o;->v:I

    iget-boolean v9, v6, Ls0/o;->s:Z

    if-eqz v9, :cond_c

    iget-object v9, v6, Ls0/o;->r:[J

    array-length v9, v9

    if-ne v7, v9, :cond_c

    move-wide v9, v1

    goto :goto_b

    :cond_c
    move-wide/from16 v9, v16

    :goto_b
    iput-wide v9, v6, Ls0/o;->w:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_d
    return-wide v1
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Ls0/c;->I:Landroidx/media3/exoplayer/source/m;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/m;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 6

    iget-object v0, p0, Ls0/c;->G:[LB0/l;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-boolean v5, v4, LB0/l;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v4, LB0/l;->M:Z

    if-eqz v5, :cond_0

    iget-wide v0, p0, Ls0/c;->N:J

    return-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, v4, LB0/l;->M:Z

    throw v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final n(Landroidx/media3/exoplayer/source/B;J)V
    .locals 0

    iput-object p1, p0, Ls0/c;->F:Landroidx/media3/exoplayer/source/B;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/B;->onPrepared(Landroidx/media3/exoplayer/source/C;)V

    return-void
.end method

.method public final o()Landroidx/media3/exoplayer/source/t0;
    .locals 1

    iget-object v0, p0, Ls0/c;->y:Landroidx/media3/exoplayer/source/t0;

    return-object v0
.end method

.method public final onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V
    .locals 0

    iget-object p1, p0, Ls0/c;->F:Landroidx/media3/exoplayer/source/B;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    return-void
.end method

.method public final p()J
    .locals 2

    iget-object v0, p0, Ls0/c;->I:Landroidx/media3/exoplayer/source/m;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/m;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final r(JZ)V
    .locals 11

    iget-object v0, p0, Ls0/c;->G:[LB0/l;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, v4, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v4}, LB0/l;->w()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->getFirstIndex()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, p1, p2, p3, v7}, Landroidx/media3/exoplayer/source/e0;->discardTo(JZZ)V

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->getFirstIndex()I

    move-result v7

    if-le v7, v6, :cond_1

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->getFirstTimestampUs()J

    move-result-wide v5

    move v8, v2

    :goto_1
    iget-object v9, v4, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    array-length v10, v9

    if-ge v8, v10, :cond_1

    aget-object v9, v9, v8

    iget-object v10, v4, LB0/l;->s:[Z

    aget-boolean v10, v10, v8

    invoke-virtual {v9, v5, v6, p3, v10}, Landroidx/media3/exoplayer/source/e0;->discardTo(JZZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v7, v2}, LB0/l;->y(II)I

    move-result v5

    iget v6, v4, LB0/l;->J:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v6, v4, LB0/l;->z:Ljava/util/ArrayList;

    invoke-static {v2, v5, v6}, Lk0/C;->V(IILjava/util/List;)V

    iget v6, v4, LB0/l;->J:I

    sub-int/2addr v6, v5

    iput v6, v4, LB0/l;->J:I

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final s(J)V
    .locals 1

    iget-object v0, p0, Ls0/c;->I:Landroidx/media3/exoplayer/source/m;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/m;->s(J)V

    return-void
.end method
