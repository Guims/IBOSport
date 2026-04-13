.class public final Lv0/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lv0/m;

.field public final b:Landroidx/media3/datasource/DataSource;

.field public final c:Landroidx/media3/datasource/DataSource;

.field public final d:Lv0/f;

.field public final e:[Landroid/net/Uri;

.field public final f:[Landroidx/media3/common/Format;

.field public final g:Lw0/c;

.field public final h:Landroidx/media3/common/TrackGroup;

.field public final i:Ljava/util/List;

.field public final j:Lv0/f;

.field public final k:Lq0/q;

.field public l:Z

.field public m:[B

.field public n:Landroidx/media3/exoplayer/source/b;

.field public o:Landroid/net/Uri;

.field public p:Z

.field public q:LD0/v;

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>(Lv0/m;Lw0/c;[Landroid/net/Uri;[Landroidx/media3/common/Format;Lv0/l;Landroidx/media3/datasource/TransferListener;Lv0/f;Ljava/util/List;Lq0/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/k;->a:Lv0/m;

    iput-object p2, p0, Lv0/k;->g:Lw0/c;

    iput-object p3, p0, Lv0/k;->e:[Landroid/net/Uri;

    iput-object p4, p0, Lv0/k;->f:[Landroidx/media3/common/Format;

    iput-object p7, p0, Lv0/k;->d:Lv0/f;

    iput-object p8, p0, Lv0/k;->i:Ljava/util/List;

    iput-object p9, p0, Lv0/k;->k:Lq0/q;

    new-instance p1, Lv0/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lv0/f;-><init>(I)V

    iput-object p1, p0, Lv0/k;->j:Lv0/f;

    sget-object p1, Lk0/C;->f:[B

    iput-object p1, p0, Lv0/k;->m:[B

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lv0/k;->r:J

    check-cast p5, Lv0/c;

    iget-object p1, p5, Lv0/c;->a:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {p1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Lv0/k;->b:Landroidx/media3/datasource/DataSource;

    if-eqz p6, :cond_0

    invoke-interface {p1, p6}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    iget-object p1, p5, Lv0/c;->a:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {p1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Lv0/k;->c:Landroidx/media3/datasource/DataSource;

    new-instance p1, Landroidx/media3/common/TrackGroup;

    invoke-direct {p1, p4}, Landroidx/media3/common/TrackGroup;-><init>([Landroidx/media3/common/Format;)V

    iput-object p1, p0, Lv0/k;->h:Landroidx/media3/common/TrackGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move p5, p2

    :goto_0
    array-length p6, p3

    if-ge p5, p6, :cond_2

    aget-object p6, p4, p5

    iget p6, p6, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 p6, p6, 0x4000

    if-nez p6, :cond_1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    new-instance p3, Lv0/i;

    iget-object p4, p0, Lv0/k;->h:Landroidx/media3/common/TrackGroup;

    invoke-static {p1}, La/a;->O(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {p3, p4, p1}, LD0/d;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    aget p1, p1, p2

    invoke-virtual {p4, p1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p1

    invoke-virtual {p3, p1}, LD0/d;->c(Landroidx/media3/common/Format;)I

    move-result p1

    iput p1, p3, Lv0/i;->g:I

    iput-object p3, p0, Lv0/k;->q:LD0/v;

    return-void
.end method


# virtual methods
.method public final a(Lv0/o;J)[LB0/p;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, -0x1

    if-nez v1, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lv0/k;->h:Landroidx/media3/common/TrackGroup;

    iget-object v3, v1, LB0/f;->s:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v2

    move v9, v2

    :goto_0
    iget-object v2, v0, Lv0/k;->q:LD0/v;

    invoke-interface {v2}, LD0/v;->length()I

    move-result v10

    new-array v11, v10, [LB0/p;

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v10, :cond_b

    iget-object v2, v0, Lv0/k;->q:LD0/v;

    invoke-interface {v2, v13}, LD0/v;->j(I)I

    move-result v2

    iget-object v3, v0, Lv0/k;->e:[Landroid/net/Uri;

    aget-object v3, v3, v2

    iget-object v4, v0, Lv0/k;->g:Lw0/c;

    invoke-virtual {v4, v3}, Lw0/c;->c(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v2, LB0/p;->a:Lh3/e;

    aput-object v2, v11, v13

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v4, v3, v12}, Lw0/c;->a(Landroid/net/Uri;Z)Lw0/i;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v3, Lw0/i;->h:J

    iget-wide v14, v4, Lw0/c;->C:J

    sub-long v4, v5, v14

    if-eq v2, v9, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-wide/from16 v6, p2

    goto :goto_3

    :cond_2
    move v2, v12

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lv0/k;->c(Lv0/o;ZLw0/i;JJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v6, Lv0/h;

    iget-wide v14, v3, Lw0/i;->k:J

    iget-object v7, v3, Lw0/i;->s:Lp3/H;

    iget-object v12, v3, Lw0/i;->r:Lp3/H;

    sub-long/2addr v0, v14

    long-to-int v0, v0

    if-ltz v0, :cond_a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_3

    goto :goto_5

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_7

    if-eq v2, v8, :cond_6

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lw0/f;

    if-nez v2, :cond_4

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v15, v14, Lw0/f;->B:Lp3/H;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v2, v15, :cond_5

    iget-object v14, v14, Lw0/f;->B:Lp3/H;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v14, v2, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    :cond_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v12, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :cond_7
    iget-wide v14, v3, Lw0/i;->n:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v14, v16

    if-eqz v0, :cond_9

    if-ne v2, v8, :cond_8

    const/4 v2, 0x0

    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_a
    :goto_5
    sget-object v0, Lp3/H;->q:Lp3/F;

    sget-object v0, Lp3/Y;->t:Lp3/Y;

    :goto_6
    invoke-direct {v6, v4, v5, v0}, Lv0/h;-><init>(JLjava/util/List;)V

    aput-object v6, v11, v13

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_b
    return-object v11
.end method

.method public final b(Lv0/o;)I
    .locals 8

    iget v0, p1, Lv0/o;->D:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lv0/k;->h:Landroidx/media3/common/TrackGroup;

    iget-object v2, p1, LB0/f;->s:Landroidx/media3/common/Format;

    invoke-virtual {v1, v2}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v1

    iget-object v2, p0, Lv0/k;->e:[Landroid/net/Uri;

    aget-object v1, v2, v1

    iget-object v2, p0, Lv0/k;->g:Lw0/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lw0/c;->a(Landroid/net/Uri;Z)Lw0/i;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lw0/i;->r:Lp3/H;

    iget-wide v4, p1, LB0/o;->y:J

    iget-wide v6, v1, Lw0/i;->k:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/f;

    iget-object v2, v2, Lw0/f;->B:Lp3/H;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lw0/i;->s:Lp3/H;

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/d;

    iget-boolean v2, v0, Lw0/d;->B:Z

    if-eqz v2, :cond_4

    return v3

    :cond_4
    iget-object v1, v1, Lw0/m;->a:Ljava/lang/String;

    iget-object v0, v0, Lw0/g;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lk0/c;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p1, p1, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-object p1, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    sget v1, Lk0/C;->a:I

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    const/4 p1, 0x2

    return p1
.end method

.method public final c(Lv0/o;ZLw0/i;JJ)Landroid/util/Pair;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    iget-wide v2, p1, LB0/o;->y:J

    iget v4, p1, Lv0/o;->D:I

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p1, Lv0/o;->W:Z

    if-eqz p2, :cond_3

    new-instance p2, Landroid/util/Pair;

    if-ne v4, v1, :cond_1

    invoke-virtual {p1}, LB0/o;->a()J

    move-result-wide v2

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-ne v4, v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v4, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    :goto_1
    iget-wide v2, p3, Lw0/i;->u:J

    iget-object p2, p3, Lw0/i;->s:Lp3/H;

    iget-wide v4, p3, Lw0/i;->k:J

    iget-object v6, p3, Lw0/i;->r:Lp3/H;

    add-long/2addr v2, p4

    if-eqz p1, :cond_6

    iget-boolean v7, p0, Lv0/k;->p:Z

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-wide p6, p1, LB0/f;->v:J

    :cond_6
    :goto_2
    iget-boolean p3, p3, Lw0/i;->o:Z

    if-nez p3, :cond_7

    cmp-long p3, p6, v2

    if-ltz p3, :cond_7

    new-instance p1, Landroid/util/Pair;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    sub-long/2addr p6, p4

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object p4, p0, Lv0/k;->g:Lw0/c;

    iget-boolean p4, p4, Lw0/c;->B:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_9

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v0, p5

    :cond_9
    :goto_3
    invoke-static {v6, p3, v0}, Lk0/C;->c(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result p1

    int-to-long p3, p1

    add-long/2addr p3, v4

    if-ltz p1, :cond_d

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/f;

    iget-wide v2, p1, Lw0/g;->t:J

    iget-wide v4, p1, Lw0/g;->r:J

    add-long/2addr v2, v4

    cmp-long v0, p6, v2

    if-gez v0, :cond_a

    iget-object p1, p1, Lw0/f;->B:Lp3/H;

    goto :goto_4

    :cond_a
    move-object p1, p2

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_d

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/d;

    iget-wide v2, v0, Lw0/g;->t:J

    iget-wide v4, v0, Lw0/g;->r:J

    add-long/2addr v2, v4

    cmp-long v2, p6, v2

    if-gez v2, :cond_c

    iget-boolean p6, v0, Lw0/d;->A:Z

    if-eqz p6, :cond_d

    if-ne p1, p2, :cond_b

    const-wide/16 p1, 0x1

    goto :goto_5

    :cond_b
    const-wide/16 p1, 0x0

    :goto_5
    add-long/2addr p3, p1

    move v1, p5

    goto :goto_6

    :cond_c
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    new-instance p1, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final d(Landroid/net/Uri;IZ)Lv0/g;
    .locals 11

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    iget-object v0, p0, Lv0/k;->j:Lv0/f;

    iget-object v1, v0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v1, Lv0/e;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_1

    iget-object p2, v0, Lv0/f;->b:Ljava/lang/Object;

    check-cast p2, Lv0/e;

    invoke-virtual {p2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p3

    :cond_1
    new-instance p3, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {p3}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {p3, p1}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v2

    new-instance v0, Lv0/g;

    iget-object p1, p0, Lv0/k;->f:[Landroidx/media3/common/Format;

    aget-object v4, p1, p2

    iget-object p1, p0, Lv0/k;->q:LD0/v;

    invoke-interface {p1}, LD0/v;->n()I

    move-result v5

    iget-object p1, p0, Lv0/k;->q:LD0/v;

    invoke-interface {p1}, LD0/v;->q()Ljava/lang/Object;

    move-result-object v6

    iget-object p1, p0, Lv0/k;->m:[B

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v1, p0, Lv0/k;->c:Landroidx/media3/datasource/DataSource;

    const/4 v3, 0x3

    invoke-direct/range {v0 .. v10}, LB0/f;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p1, :cond_2

    sget-object p1, Lk0/C;->f:[B

    :cond_2
    iput-object p1, v0, Lv0/g;->y:[B

    return-object v0
.end method
