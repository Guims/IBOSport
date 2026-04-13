.class public final Landroidx/media3/exoplayer/source/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/K;
.implements Lu0/n;


# instance fields
.field public final b:Ljava/lang/Object;

.field public q:LA/d;

.field public r:Lu0/m;

.field public final synthetic s:Landroidx/media3/exoplayer/source/k;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/k;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i;->s:Landroidx/media3/exoplayer/source/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/a;->i(Landroidx/media3/exoplayer/source/E;)LA/d;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/a;->d:Lu0/m;

    new-instance v1, Lu0/m;

    iget-object p1, p1, Lu0/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lu0/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/i;->r:Lu0/m;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/exoplayer/source/E;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/i;->s:Landroidx/media3/exoplayer/source/k;

    if-eqz p2, :cond_0

    invoke-virtual {v1, v0, p2}, Landroidx/media3/exoplayer/source/k;->u(Ljava/lang/Object;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/E;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/source/k;->w(ILjava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    iget v2, v0, LA/d;->q:I

    if-ne v2, p1, :cond_2

    iget-object v0, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/E;

    sget v2, Lk0/C;->a:I

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/source/a;->c:LA/d;

    new-instance v2, LA/d;

    iget-object v0, v0, LA/d;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v0, p1, p2}, LA/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->r:Lu0/m;

    iget v2, v0, Lu0/m;->a:I

    if-ne v2, p1, :cond_4

    iget-object v0, v0, Lu0/m;->b:Landroidx/media3/exoplayer/source/E;

    sget v2, Lk0/C;->a:I

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, v1, Landroidx/media3/exoplayer/source/a;->d:Lu0/m;

    new-instance v1, Lu0/m;

    iget-object v0, v0, Lu0/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0, p1, p2}, Lu0/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/i;->r:Lu0/m;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Landroidx/media3/exoplayer/source/A;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/A;
    .locals 13

    iget-wide v0, p1, Landroidx/media3/exoplayer/source/A;->f:J

    iget-object p2, p0, Landroidx/media3/exoplayer/source/i;->s:Landroidx/media3/exoplayer/source/k;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/i;->b:Ljava/lang/Object;

    invoke-virtual {p2, v2, v0, v1}, Landroidx/media3/exoplayer/source/k;->v(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-wide v3, p1, Landroidx/media3/exoplayer/source/A;->g:J

    invoke-virtual {p2, v2, v3, v4}, Landroidx/media3/exoplayer/source/k;->v(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long p2, v9, v0

    if-nez p2, :cond_0

    cmp-long p2, v11, v3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance v3, Landroidx/media3/exoplayer/source/A;

    iget v4, p1, Landroidx/media3/exoplayer/source/A;->a:I

    iget v5, p1, Landroidx/media3/exoplayer/source/A;->b:I

    iget-object v6, p1, Landroidx/media3/exoplayer/source/A;->c:Landroidx/media3/common/Format;

    iget v7, p1, Landroidx/media3/exoplayer/source/A;->d:I

    iget-object v8, p1, Landroidx/media3/exoplayer/source/A;->e:Ljava/lang/Object;

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/source/A;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-object v3
.end method

.method public final onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    invoke-virtual {p0, p3, p2}, Landroidx/media3/exoplayer/source/i;->b(Landroidx/media3/exoplayer/source/A;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/A;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, LD0/f;

    const/4 v0, 0x6

    invoke-direct {p3, p1, v0, p2}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, LA/d;->f(Lk0/h;)V

    :cond_0
    return-void
.end method

.method public final onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/E;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->r:Lu0/m;

    invoke-virtual {p1}, Lu0/m;->a()V

    :cond_0
    return-void
.end method

.method public final onDrmKeysRestored(ILandroidx/media3/exoplayer/source/E;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->r:Lu0/m;

    invoke-virtual {p1}, Lu0/m;->b()V

    :cond_0
    return-void
.end method

.method public final onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/E;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->r:Lu0/m;

    invoke-virtual {p1, p3}, Lu0/m;->c(I)V

    :cond_0
    return-void
.end method

.method public final onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/E;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->r:Lu0/m;

    invoke-virtual {p1, p3}, Lu0/m;->d(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final onDrmSessionReleased(ILandroidx/media3/exoplayer/source/E;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->r:Lu0/m;

    invoke-virtual {p1}, Lu0/m;->e()V

    :cond_0
    return-void
.end method

.method public final onLoadCanceled(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    invoke-virtual {p0, p4, p2}, Landroidx/media3/exoplayer/source/i;->b(Landroidx/media3/exoplayer/source/A;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/A;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Landroidx/media3/exoplayer/source/H;

    const/4 v0, 0x2

    invoke-direct {p4, p1, p3, p2, v0}, Landroidx/media3/exoplayer/source/H;-><init>(LA/d;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;I)V

    invoke-virtual {p1, p4}, LA/d;->f(Lk0/h;)V

    :cond_0
    return-void
.end method

.method public final onLoadCompleted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    invoke-virtual {p0, p4, p2}, Landroidx/media3/exoplayer/source/i;->b(Landroidx/media3/exoplayer/source/A;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/A;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Landroidx/media3/exoplayer/source/H;

    const/4 v0, 0x1

    invoke-direct {p4, p1, p3, p2, v0}, Landroidx/media3/exoplayer/source/H;-><init>(LA/d;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;I)V

    invoke-virtual {p1, p4}, LA/d;->f(Lk0/h;)V

    :cond_0
    return-void
.end method

.method public final onLoadError(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    invoke-virtual {p0, p4, p2}, Landroidx/media3/exoplayer/source/i;->b(Landroidx/media3/exoplayer/source/A;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/A;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/source/I;

    move-object v2, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/I;-><init>(LA/d;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V

    invoke-virtual {v1, v0}, LA/d;->f(Lk0/h;)V

    :cond_0
    return-void
.end method

.method public final onLoadStarted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    invoke-virtual {p0, p4, p2}, Landroidx/media3/exoplayer/source/i;->b(Landroidx/media3/exoplayer/source/A;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/A;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Landroidx/media3/exoplayer/source/H;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, p2, v0}, Landroidx/media3/exoplayer/source/H;-><init>(LA/d;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;I)V

    invoke-virtual {p1, p4}, LA/d;->f(Lk0/h;)V

    :cond_0
    return-void
.end method

.method public final onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/i;->a(ILandroidx/media3/exoplayer/source/E;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i;->q:LA/d;

    invoke-virtual {p0, p3, p2}, Landroidx/media3/exoplayer/source/i;->b(Landroidx/media3/exoplayer/source/A;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/A;

    move-result-object p2

    iget-object p3, p1, LA/d;->r:Ljava/lang/Object;

    check-cast p3, Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LF3/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, p2, v1}, LF3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, LA/d;->f(Lk0/h;)V

    :cond_0
    return-void
.end method
