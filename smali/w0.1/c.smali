.class public final Lw0/c;
.super Ljava/lang/Object;

# interfaces
.implements LE0/n;


# static fields
.field public static final D:Lq0/h;


# instance fields
.field public A:Lw0/i;

.field public B:Z

.field public C:J

.field public final b:Lv0/c;

.field public final q:Lw0/p;

.field public final r:LE0/m;

.field public final s:Ljava/util/HashMap;

.field public final t:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public u:LA/d;

.field public v:LE0/s;

.field public w:Landroid/os/Handler;

.field public x:Lv0/q;

.field public y:Lw0/l;

.field public z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq0/h;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lq0/h;-><init>(I)V

    sput-object v0, Lw0/c;->D:Lq0/h;

    return-void
.end method

.method public constructor <init>(Lv0/c;LE0/j;Lw0/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/c;->b:Lv0/c;

    iput-object p3, p0, Lw0/c;->q:Lw0/p;

    iput-object p2, p0, Lw0/c;->r:LE0/m;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lw0/c;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lw0/c;->s:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lw0/c;->C:J

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Z)Lw0/i;
    .locals 4

    iget-object v0, p0, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/b;

    iget-object v1, v1, Lw0/b;->s:Lw0/i;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    iget-object p2, p0, Lw0/c;->z:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lw0/c;->y:Lw0/l;

    iget-object p2, p2, Lw0/l;->e:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/k;

    iget-object v3, v3, Lw0/k;->a:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Lw0/c;->A:Lw0/i;

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lw0/i;->o:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lw0/c;->z:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw0/b;

    iget-object v2, p2, Lw0/b;->s:Lw0/i;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lw0/i;->o:Z

    if-eqz v3, :cond_1

    iput-object v2, p0, Lw0/c;->A:Lw0/i;

    iget-object p2, p0, Lw0/c;->x:Lv0/q;

    invoke-virtual {p2, v2}, Lv0/q;->v(Lw0/i;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lw0/c;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Lw0/b;->e(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/b;

    iget-object p2, p1, Lw0/b;->s:Lw0/i;

    iget-boolean v0, p1, Lw0/b;->z:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p1, Lw0/b;->z:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p2, Lw0/i;->o:Z

    if-nez p2, :cond_5

    invoke-virtual {p1, v0}, Lw0/b;->c(Z)V

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final b(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lw0/c;->A:Lw0/i;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lw0/i;->v:Lw0/h;

    iget-boolean v1, v1, Lw0/h;->e:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lw0/i;->t:Lp3/J;

    check-cast v0, Lp3/d0;

    invoke-virtual {v0, p1}, Lp3/d0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-wide v1, v0, Lw0/e;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_HLS_msn"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v0, v0, Lw0/e;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "_HLS_part"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final c(Landroid/net/Uri;)Z
    .locals 7

    iget-object v0, p0, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/b;

    iget-object v0, p1, Lw0/b;->s:Lw0/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p1, Lw0/b;->s:Lw0/i;

    iget-wide v2, v2, Lw0/i;->u:J

    invoke-static {v2, v3}, Lk0/C;->c0(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v4, p1, Lw0/b;->s:Lw0/i;

    iget-boolean v5, v4, Lw0/i;->o:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    iget v4, v4, Lw0/i;->d:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    if-eq v4, v6, :cond_2

    iget-wide v4, p1, Lw0/b;->t:J

    add-long/2addr v4, v2

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    return v6
.end method

.method public final g(LE0/p;JJLjava/io/IOException;I)LE0/l;
    .locals 4

    check-cast p1, LE0/v;

    new-instance p2, Landroidx/media3/exoplayer/source/v;

    iget-wide v0, p1, LE0/v;->b:J

    iget-object p3, p1, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {p3}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {p3}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {p3}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    invoke-direct {p2, p4, p5}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget p1, p1, LE0/v;->r:I

    iget-object p3, p0, Lw0/c;->r:LE0/m;

    move-object p4, p3

    check-cast p4, LE0/j;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p4, p6, Landroidx/media3/common/ParserException;

    const/4 p5, 0x1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p4, :cond_1

    instance-of p4, p6, Ljava/io/FileNotFoundException;

    if-nez p4, :cond_1

    instance-of p4, p6, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez p4, :cond_1

    instance-of p4, p6, LE0/r;

    if-nez p4, :cond_1

    invoke-static {p6}, Landroidx/media3/datasource/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p7, p5

    mul-int/lit16 p7, p7, 0x3e8

    const/16 p4, 0x1388

    invoke-static {p7, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    int-to-long v2, p4

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v2, v0

    :goto_1
    cmp-long p4, v2, v0

    const/4 p7, 0x0

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    move p5, p7

    :goto_2
    iget-object p4, p0, Lw0/c;->u:LA/d;

    invoke-virtual {p4, p2, p1, p6, p5}, LA/d;->m(Landroidx/media3/exoplayer/source/v;ILjava/io/IOException;Z)V

    if-eqz p5, :cond_3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    if-eqz p5, :cond_4

    sget-object p1, LE0/s;->u:LE0/l;

    return-object p1

    :cond_4
    new-instance p1, LE0/l;

    const/4 p2, 0x0

    invoke-direct {p1, p7, p2, v2, v3}, LE0/l;-><init>(IZJ)V

    return-object p1
.end method

.method public final l(LE0/p;JJZ)V
    .locals 11

    check-cast p1, LE0/v;

    new-instance v1, Landroidx/media3/exoplayer/source/v;

    iget-wide p2, p1, LE0/v;->b:J

    iget-object p1, p1, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {p1}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide p1, p4

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object p1, p0, Lw0/c;->r:LE0/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lw0/c;->u:LA/d;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v10}, LA/d;->i(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final m(LE0/p;JJ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, LE0/v;

    iget-object v2, v1, LE0/v;->u:Ljava/lang/Object;

    check-cast v2, Lw0/m;

    instance-of v3, v2, Lw0/i;

    if-eqz v3, :cond_0

    iget-object v4, v2, Lw0/m;->a:Ljava/lang/String;

    sget-object v5, Lw0/l;->n:Lw0/l;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    const-string v5, "application/x-mpegURL"

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v8

    new-instance v6, Lw0/k;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lw0/k;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v7, Lw0/l;

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v17, 0x0

    sget-object v18, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v8, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move-object v12, v9

    move-object v13, v9

    move-object v14, v9

    move-object/from16 v19, v9

    invoke-direct/range {v7 .. v19}, Lw0/l;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v7, v2

    check-cast v7, Lw0/l;

    :goto_0
    iput-object v7, v0, Lw0/c;->y:Lw0/l;

    iget-object v4, v7, Lw0/l;->e:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw0/k;

    iget-object v4, v4, Lw0/k;->a:Landroid/net/Uri;

    iput-object v4, v0, Lw0/c;->z:Landroid/net/Uri;

    iget-object v4, v0, Lw0/c;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v6, Lw0/a;

    invoke-direct {v6, v0}, Lw0/a;-><init>(Lw0/c;)V

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lw0/l;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    new-instance v9, Lw0/b;

    invoke-direct {v9, v0, v8}, Lw0/b;-><init>(Lw0/c;Landroid/net/Uri;)V

    iget-object v10, v0, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-instance v9, Landroidx/media3/exoplayer/source/v;

    iget-object v4, v1, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v4}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    iget-object v4, v1, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v4}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    iget-object v1, v1, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v6, p4

    invoke-direct {v9, v6, v7}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v1, v0, Lw0/c;->s:Ljava/util/HashMap;

    iget-object v4, v0, Lw0/c;->z:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/b;

    if-eqz v3, :cond_2

    check-cast v2, Lw0/i;

    invoke-virtual {v1, v2, v9}, Lw0/b;->f(Lw0/i;Landroidx/media3/exoplayer/source/v;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Lw0/b;->c(Z)V

    :goto_2
    iget-object v1, v0, Lw0/c;->r:LE0/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Lw0/c;->u:LA/d;

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x4

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v18}, LA/d;->j(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method
