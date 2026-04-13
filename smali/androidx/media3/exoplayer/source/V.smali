.class public final Landroidx/media3/exoplayer/source/V;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/C;
.implements LI0/s;
.implements LE0/n;
.implements LE0/q;
.implements Landroidx/media3/exoplayer/source/d0;


# static fields
.field public static final f0:Ljava/util/Map;

.field public static final g0:Landroidx/media3/common/Format;


# instance fields
.field public final A:J

.field public final B:LE0/s;

.field public final C:LJ/l;

.field public final D:Lk0/g;

.field public final E:Landroidx/media3/exoplayer/source/P;

.field public final F:Landroidx/media3/exoplayer/source/P;

.field public final G:Landroid/os/Handler;

.field public H:Landroidx/media3/exoplayer/source/B;

.field public I:LV0/b;

.field public J:[Landroidx/media3/exoplayer/source/e0;

.field public K:[Landroidx/media3/exoplayer/source/U;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:LK1/c;

.field public Q:LI0/F;

.field public R:J

.field public S:Z

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:I

.field public Y:Z

.field public Z:J

.field public a0:J

.field public final b:Landroid/net/Uri;

.field public b0:Z

.field public c0:I

.field public d0:Z

.field public e0:Z

.field public final q:Landroidx/media3/datasource/DataSource;

.field public final r:Lu0/q;

.field public final s:LE0/m;

.field public final t:LA/d;

.field public final u:Lu0/m;

.field public final v:Landroidx/media3/exoplayer/source/Y;

.field public final w:LE0/b;

.field public final x:Ljava/lang/String;

.field public final y:J

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/V;->f0:Ljava/util/Map;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "icy"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/V;->g0:Landroidx/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;LJ/l;Lu0/q;Lu0/m;LE0/m;LA/d;Landroidx/media3/exoplayer/source/Y;LE0/b;Ljava/lang/String;IZJLF0/a;)V
    .locals 1

    move-object/from16 v0, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->b:Landroid/net/Uri;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/V;->q:Landroidx/media3/datasource/DataSource;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/V;->r:Lu0/q;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/V;->u:Lu0/m;

    iput-object p6, p0, Landroidx/media3/exoplayer/source/V;->s:LE0/m;

    iput-object p7, p0, Landroidx/media3/exoplayer/source/V;->t:LA/d;

    iput-object p8, p0, Landroidx/media3/exoplayer/source/V;->v:Landroidx/media3/exoplayer/source/Y;

    iput-object p9, p0, Landroidx/media3/exoplayer/source/V;->w:LE0/b;

    iput-object p10, p0, Landroidx/media3/exoplayer/source/V;->x:Ljava/lang/String;

    int-to-long p1, p11

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/V;->y:J

    iput-boolean p12, p0, Landroidx/media3/exoplayer/source/V;->z:Z

    if-eqz v0, :cond_0

    new-instance p1, LE0/s;

    invoke-direct {p1, v0}, LE0/s;-><init>(LF0/a;)V

    goto :goto_0

    :cond_0
    new-instance p1, LE0/s;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, LE0/s;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/V;->C:LJ/l;

    iput-wide p13, p0, Landroidx/media3/exoplayer/source/V;->A:J

    new-instance p1, Lk0/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->D:Lk0/g;

    new-instance p1, Landroidx/media3/exoplayer/source/P;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/source/P;-><init>(Landroidx/media3/exoplayer/source/V;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->E:Landroidx/media3/exoplayer/source/P;

    new-instance p1, Landroidx/media3/exoplayer/source/P;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/source/P;-><init>(Landroidx/media3/exoplayer/source/V;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->F:Landroidx/media3/exoplayer/source/P;

    const/4 p1, 0x0

    invoke-static {p1}, Lk0/C;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->G:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media3/exoplayer/source/U;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/V;->K:[Landroidx/media3/exoplayer/source/U;

    new-array p1, p1, [Landroidx/media3/exoplayer/source/e0;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/V;->a0:J

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/source/V;->T:I

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 14

    new-instance v0, Landroidx/media3/exoplayer/source/S;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/V;->C:LJ/l;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/V;->D:Lk0/g;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/V;->b:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/V;->q:Landroidx/media3/datasource/DataSource;

    move-object v5, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/S;-><init>(Landroidx/media3/exoplayer/source/V;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;LJ/l;Landroidx/media3/exoplayer/source/V;Lk0/g;)V

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/V;->M:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->u()Z

    move-result v2

    invoke-static {v2}, Lk0/c;->j(Z)V

    iget-wide v2, v1, Landroidx/media3/exoplayer/source/V;->R:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/V;->a0:J

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    iput-boolean v7, v1, Landroidx/media3/exoplayer/source/V;->d0:Z

    iput-wide v4, v1, Landroidx/media3/exoplayer/source/V;->a0:J

    return-void

    :cond_0
    iget-object v2, v1, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/V;->a0:J

    invoke-interface {v2, v8, v9}, LI0/F;->h(J)LI0/E;

    move-result-object v2

    iget-object v2, v2, LI0/E;->a:LI0/G;

    iget-wide v2, v2, LI0/G;->b:J

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/V;->a0:J

    iget-object v6, v0, Landroidx/media3/exoplayer/source/S;->u:LI0/D;

    iput-wide v2, v6, LI0/D;->a:J

    iput-wide v8, v0, Landroidx/media3/exoplayer/source/S;->x:J

    iput-boolean v7, v0, Landroidx/media3/exoplayer/source/S;->w:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/S;->A:Z

    iget-object v3, v1, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v6, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v3, v2

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/V;->a0:J

    invoke-virtual {v7, v8, v9}, Landroidx/media3/exoplayer/source/e0;->setStartTimeUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-wide v4, v1, Landroidx/media3/exoplayer/source/V;->a0:J

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->q()I

    move-result v2

    iput v2, v1, Landroidx/media3/exoplayer/source/V;->c0:I

    iget v2, v1, Landroidx/media3/exoplayer/source/V;->T:I

    iget-object v3, v1, Landroidx/media3/exoplayer/source/V;->s:LE0/m;

    check-cast v3, LE0/j;

    invoke-virtual {v3, v2}, LE0/j;->b(I)I

    move-result v2

    iget-object v3, v1, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    invoke-virtual {v3, v0, p0, v2}, LE0/s;->f(LE0/p;LE0/n;I)J

    iget-object v2, v0, Landroidx/media3/exoplayer/source/S;->y:Landroidx/media3/datasource/DataSpec;

    new-instance v4, Landroidx/media3/exoplayer/source/v;

    invoke-direct {v4, v2}, Landroidx/media3/exoplayer/source/v;-><init>(Landroidx/media3/datasource/DataSpec;)V

    iget-wide v10, v0, Landroidx/media3/exoplayer/source/S;->x:J

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/V;->R:J

    iget-object v3, v1, Landroidx/media3/exoplayer/source/V;->t:LA/d;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v13}, LA/d;->o(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->V:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->G:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/V;->E:Landroidx/media3/exoplayer/source/P;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->C:LJ/l;

    iget-object v1, v0, LJ/l;->s:Ljava/lang/Object;

    check-cast v1, LI0/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, LI0/q;->release()V

    iput-object v2, v0, LJ/l;->s:Ljava/lang/Object;

    :cond_1
    iput-object v2, v0, LJ/l;->q:Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/V;->d0:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    invoke-virtual {p1}, LE0/s;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->b0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->M:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/source/V;->X:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->D:Lk0/g;

    invoke-virtual {v0}, Lk0/g;->e()Z

    move-result v0

    invoke-virtual {p1}, LE0/s;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->A()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    iget-object v1, v0, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/t0;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, [Z

    iget v2, p0, Landroidx/media3/exoplayer/source/V;->X:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v7, p1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    :cond_0
    check-cast v5, Landroidx/media3/exoplayer/source/T;

    iget v5, v5, Landroidx/media3/exoplayer/source/T;->b:I

    aget-boolean v7, v0, v5

    invoke-static {v7}, Lk0/c;->j(Z)V

    iget v7, p0, Landroidx/media3/exoplayer/source/V;->X:I

    sub-int/2addr v7, v6

    iput v7, p0, Landroidx/media3/exoplayer/source/V;->X:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/V;->U:Z

    if-eqz p2, :cond_4

    if-nez v2, :cond_3

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_3
    move p2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/V;->O:Z

    if-nez p2, :cond_3

    goto :goto_1

    :goto_2
    move v2, v3

    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    invoke-interface {v4}, LD0/v;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Lk0/c;->j(Z)V

    invoke-interface {v4, v3}, LD0/v;->j(I)I

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    invoke-static {v5}, Lk0/c;->j(Z)V

    invoke-interface {v4}, LD0/v;->d()Landroidx/media3/common/TrackGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/source/t0;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v5

    aget-boolean v7, v0, v5

    xor-int/2addr v7, v6

    invoke-static {v7}, Lk0/c;->j(Z)V

    iget v7, p0, Landroidx/media3/exoplayer/source/V;->X:I

    add-int/2addr v7, v6

    iput v7, p0, Landroidx/media3/exoplayer/source/V;->X:I

    aput-boolean v6, v0, v5

    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/V;->W:Z

    invoke-interface {v4}, LD0/v;->m()Landroidx/media3/common/Format;

    move-result-object v4

    iget-boolean v4, v4, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    or-int/2addr v4, v7

    iput-boolean v4, p0, Landroidx/media3/exoplayer/source/V;->W:Z

    new-instance v4, Landroidx/media3/exoplayer/source/T;

    invoke-direct {v4, p0, v5}, Landroidx/media3/exoplayer/source/T;-><init>(Landroidx/media3/exoplayer/source/V;I)V

    aput-object v4, p3, v2

    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2, p5, p6, v6}, Landroidx/media3/exoplayer/source/e0;->seekTo(JZ)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v6

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Landroidx/media3/exoplayer/source/V;->X:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/V;->b0:Z

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/V;->V:Z

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/V;->W:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    invoke-virtual {p1}, LE0/s;->d()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length p3, p2

    :goto_7
    if-ge v3, p3, :cond_a

    aget-object p4, p2, v3

    invoke-virtual {p4}, Landroidx/media3/exoplayer/source/e0;->discardToEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, LE0/s;->b()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/V;->d0:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length p2, p1

    :goto_8
    if-ge v3, p2, :cond_e

    aget-object p3, p1, v3

    invoke-virtual {p3}, Landroidx/media3/exoplayer/source/e0;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Landroidx/media3/exoplayer/source/V;->i(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/V;->U:Z

    return-wide p5
.end method

.method public final endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->L:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->G:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/V;->E:Landroidx/media3/exoplayer/source/P;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/V;->s:LE0/m;

    iget v2, p0, Landroidx/media3/exoplayer/source/V;->T:I

    check-cast v1, LE0/j;

    invoke-virtual {v1, v2}, LE0/j;->b(I)I

    move-result v1

    iget-object v2, v0, LE0/s;->r:Ljava/io/IOException;

    if-nez v2, :cond_2

    iget-object v0, v0, LE0/s;->q:LE0/o;

    if-eqz v0, :cond_3

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    iget v1, v0, LE0/o;->b:I

    :cond_0
    iget-object v2, v0, LE0/o;->t:Ljava/io/IOException;

    if-eqz v2, :cond_3

    iget v0, v0, LE0/o;->u:I

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->z:Z

    if-eqz v1, :cond_6

    const-string v1, "ProgressiveMediaPeriod"

    const-string v2, "Suppressing preparation error because suppressPrepareError=true"

    invoke-static {v1, v2, v0}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->L:Z

    new-instance v0, LI0/v;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, LI0/v;-><init>(J)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/V;->z(LI0/F;)V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->d0:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->M:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_1
    return-void

    :cond_6
    throw v0
.end method

.method public final g(LE0/p;JJLjava/io/IOException;I)LE0/l;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/S;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    move-object v3, v2

    new-instance v2, Landroidx/media3/exoplayer/source/v;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v3, p4

    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    sget v3, Lk0/C;->a:I

    iget-object v14, v0, Landroidx/media3/exoplayer/source/V;->s:LE0/m;

    move-object v3, v14

    check-cast v3, LE0/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v12, Landroidx/media3/common/ParserException;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-nez v3, :cond_1

    instance-of v3, v12, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_1

    instance-of v3, v12, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v3, :cond_1

    instance-of v3, v12, LE0/r;

    if-nez v3, :cond_1

    invoke-static {v12}, Landroidx/media3/datasource/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p7, -0x1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v7, 0x1388

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v7, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v4

    :goto_1
    cmp-long v3, v7, v4

    if-nez v3, :cond_2

    sget-object v3, LE0/s;->u:LE0/l;

    :goto_2
    move-object v15, v3

    goto :goto_7

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/V;->q()I

    move-result v3

    iget v9, v0, Landroidx/media3/exoplayer/source/V;->c0:I

    const/4 v10, 0x0

    if-le v3, v9, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v10

    :goto_3
    iget-boolean v11, v0, Landroidx/media3/exoplayer/source/V;->Y:Z

    if-nez v11, :cond_7

    iget-object v11, v0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    if-eqz v11, :cond_4

    invoke-interface {v11}, LI0/F;->j()J

    move-result-wide v15

    cmp-long v4, v15, v4

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/V;->M:Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/V;->B()Z

    move-result v3

    if-nez v3, :cond_5

    iput-boolean v6, v0, Landroidx/media3/exoplayer/source/V;->b0:Z

    sget-object v3, LE0/s;->t:LE0/l;

    goto :goto_2

    :cond_5
    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/V;->M:Z

    iput-boolean v3, v0, Landroidx/media3/exoplayer/source/V;->V:Z

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroidx/media3/exoplayer/source/V;->Z:J

    iput v10, v0, Landroidx/media3/exoplayer/source/V;->c0:I

    iget-object v5, v0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v11, v5

    move v13, v10

    :goto_4
    if-ge v13, v11, :cond_6

    aget-object v15, v5, v13

    invoke-virtual {v15}, Landroidx/media3/exoplayer/source/e0;->reset()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, v1, Landroidx/media3/exoplayer/source/S;->u:LI0/D;

    iput-wide v3, v5, LI0/D;->a:J

    iput-wide v3, v1, Landroidx/media3/exoplayer/source/S;->x:J

    iput-boolean v6, v1, Landroidx/media3/exoplayer/source/S;->w:Z

    iput-boolean v10, v1, Landroidx/media3/exoplayer/source/S;->A:Z

    goto :goto_6

    :cond_7
    :goto_5
    iput v3, v0, Landroidx/media3/exoplayer/source/V;->c0:I

    :goto_6
    new-instance v3, LE0/l;

    invoke-direct {v3, v9, v10, v7, v8}, LE0/l;-><init>(IZJ)V

    goto :goto_2

    :goto_7
    invoke-virtual {v15}, LE0/l;->a()Z

    move-result v16

    xor-int/lit8 v13, v16, 0x1

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/S;->x:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/source/V;->R:J

    iget-object v1, v0, Landroidx/media3/exoplayer/source/V;->t:LA/d;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v13}, LA/d;->l(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_8

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    return-object v15
.end method

.method public final h(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    invoke-interface {v0}, LI0/F;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    invoke-interface {v0, p1, p2}, LI0/F;->h(J)LI0/E;

    move-result-object v0

    iget-object v1, v0, LI0/E;->a:LI0/G;

    iget-wide v5, v1, LI0/G;->a:J

    iget-object v0, v0, LI0/E;->b:LI0/G;

    iget-wide v7, v0, LI0/G;->a:J

    move-wide v3, p1

    move-object v2, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/media3/exoplayer/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final i(J)J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    iget-object v0, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    invoke-interface {v1}, LI0/F;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->V:Z

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/V;->Z:J

    cmp-long v2, v2, p1

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/V;->Z:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->u()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/V;->a0:J

    return-wide p1

    :cond_2
    iget v4, p0, Landroidx/media3/exoplayer/source/V;->T:I

    const/4 v5, 0x7

    iget-object v6, p0, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    if-eq v4, v5, :cond_9

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/V;->d0:Z

    if-nez v4, :cond_3

    invoke-virtual {v6}, LE0/s;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    iget-object v4, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v4, v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_8

    iget-object v7, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v8

    if-nez v8, :cond_4

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v8, p0, Landroidx/media3/exoplayer/source/V;->O:Z

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/e0;->getFirstIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/media3/exoplayer/source/e0;->seekTo(I)Z

    move-result v7

    goto :goto_3

    :cond_5
    invoke-virtual {v7, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->seekTo(JZ)Z

    move-result v7

    :goto_3
    if-nez v7, :cond_7

    aget-boolean v7, v0, v5

    if-nez v7, :cond_6

    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/V;->N:Z

    if-nez v7, :cond_7

    :cond_6
    move v3, v1

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->b0:Z

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/V;->a0:J

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->d0:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->W:Z

    invoke-virtual {v6}, LE0/s;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v2, v0

    :goto_6
    if-ge v1, v2, :cond_a

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->discardToEnd()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v6}, LE0/s;->b()V

    return-wide p1

    :cond_b
    const/4 v0, 0x0

    iput-object v0, v6, LE0/s;->r:Ljava/io/IOException;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v2, v0

    :goto_7
    if-ge v1, v2, :cond_c

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    return-wide p1
.end method

.method public final isLoading()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->D:Lk0/g;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lk0/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->M:Z

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final k()J
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->W:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->W:Z

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->Z:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->V:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->d0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->q()I

    move-result v0

    iget v2, p0, Landroidx/media3/exoplayer/source/V;->c0:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->V:Z

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->Z:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final l(LE0/p;JJZ)V
    .locals 12

    check-cast p1, Landroidx/media3/exoplayer/source/S;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    new-instance v2, Landroidx/media3/exoplayer/source/v;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->s:LE0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v8, p1, Landroidx/media3/exoplayer/source/S;->x:J

    iget-wide v10, p0, Landroidx/media3/exoplayer/source/V;->R:J

    iget-object v1, p0, Landroidx/media3/exoplayer/source/V;->t:LA/d;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v11}, LA/d;->i(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/media3/exoplayer/source/V;->X:I

    if-lez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->H:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    :cond_1
    return-void
.end method

.method public final m(LE0/p;JJ)V
    .locals 13

    check-cast p1, Landroidx/media3/exoplayer/source/S;

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->R:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LI0/F;->d()Z

    move-result v0

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/V;->t(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/V;->R:J

    iget-object v4, p0, Landroidx/media3/exoplayer/source/V;->v:Landroidx/media3/exoplayer/source/Y;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/V;->S:Z

    invoke-virtual {v4, v2, v3, v0, v5}, Landroidx/media3/exoplayer/source/Y;->v(JZZ)V

    :cond_1
    iget-object v0, p1, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    new-instance v3, Landroidx/media3/exoplayer/source/v;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v4, p4

    invoke-direct {v3, v4, v5}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->s:LE0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v9, p1, Landroidx/media3/exoplayer/source/S;->x:J

    iget-wide v11, p0, Landroidx/media3/exoplayer/source/V;->R:J

    iget-object v2, p0, Landroidx/media3/exoplayer/source/V;->t:LA/d;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v12}, LA/d;->j(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->d0:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->H:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    return-void
.end method

.method public final n(Landroidx/media3/exoplayer/source/B;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->H:Landroidx/media3/exoplayer/source/B;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->D:Lk0/g;

    invoke-virtual {p1}, Lk0/g;->e()Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->A()V

    return-void
.end method

.method public final o()Landroidx/media3/exoplayer/source/t0;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    iget-object v0, v0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/t0;

    return-object v0
.end method

.method public final p()J
    .locals 11

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->j()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->d0:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Landroidx/media3/exoplayer/source/V;->X:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->a0:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->N:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    iget-object v10, v9, LK1/c;->r:Ljava/lang/Object;

    check-cast v10, [Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, LK1/c;->s:Ljava/lang/Object;

    check-cast v9, [Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/e0;->getLargestQueuedTimestampUs()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/source/V;->t(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->Z:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final q()I
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/e0;->getWriteIndex()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final r(JZ)V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->O:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->j()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Landroidx/media3/exoplayer/source/e0;->discardTo(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final s(J)V
    .locals 0

    return-void
.end method

.method public final seekMap(LI0/F;)V
    .locals 2

    new-instance v0, LA/o;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->G:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t(Z)J
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, LK1/c;->s:Ljava/lang/Object;

    check-cast v3, [Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public final track(II)LI0/L;
    .locals 1

    new-instance p2, Landroidx/media3/exoplayer/source/U;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/media3/exoplayer/source/U;-><init>(IZ)V

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/V;->y(Landroidx/media3/exoplayer/source/U;)LI0/L;

    move-result-object p1

    return-object p1
.end method

.method public final u()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->a0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()V
    .locals 15

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->e0:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->M:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->L:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/e0;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->D:Lk0/g;

    invoke-virtual {v0}, Lk0/g;->d()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v0, v0

    new-array v1, v0, [Landroidx/media3/common/TrackGroup;

    new-array v3, v0, [Z

    move v4, v2

    :goto_1
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v7, p0, Landroidx/media3/exoplayer/source/V;->A:J

    const/4 v9, 0x1

    if-ge v4, v0, :cond_a

    iget-object v10, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/e0;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v10, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    move v13, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v13, v9

    :goto_3
    aput-boolean v13, v3, v4

    iget-boolean v14, p0, Landroidx/media3/exoplayer/source/V;->N:Z

    or-int/2addr v13, v14

    iput-boolean v13, p0, Landroidx/media3/exoplayer/source/V;->N:Z

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v11

    cmp-long v5, v7, v5

    if-eqz v5, :cond_5

    if-ne v0, v9, :cond_5

    if-eqz v11, :cond_5

    move v5, v9

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    iput-boolean v5, p0, Landroidx/media3/exoplayer/source/V;->O:Z

    iget-object v5, p0, Landroidx/media3/exoplayer/source/V;->I:LV0/b;

    if-eqz v5, :cond_9

    iget v6, v5, LV0/b;->b:I

    if-nez v12, :cond_6

    iget-object v7, p0, Landroidx/media3/exoplayer/source/V;->K:[Landroidx/media3/exoplayer/source/U;

    aget-object v7, v7, v4

    iget-boolean v7, v7, Landroidx/media3/exoplayer/source/U;->b:Z

    if-eqz v7, :cond_8

    :cond_6
    iget-object v7, v10, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v7, :cond_7

    new-instance v7, Landroidx/media3/common/Metadata;

    new-array v8, v9, [Landroidx/media3/common/Metadata$Entry;

    aput-object v5, v8, v2

    invoke-direct {v7, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_5

    :cond_7
    new-array v8, v9, [Landroidx/media3/common/Metadata$Entry;

    aput-object v5, v8, v2

    invoke-virtual {v7, v8}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v7

    :goto_5
    invoke-virtual {v10}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v10

    :cond_8
    if-eqz v12, :cond_9

    iget v5, v10, Landroidx/media3/common/Format;->averageBitrate:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_9

    iget v5, v10, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v5, v7, :cond_9

    if-eq v6, v7, :cond_9

    invoke-virtual {v10}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v10

    :cond_9
    iget-object v5, p0, Landroidx/media3/exoplayer/source/V;->r:Lu0/q;

    invoke-interface {v5, v10}, Lu0/q;->d(Landroidx/media3/common/Format;)I

    move-result v5

    invoke-virtual {v10, v5}, Landroidx/media3/common/Format;->copyWithCryptoType(I)Landroidx/media3/common/Format;

    move-result-object v5

    new-instance v6, Landroidx/media3/common/TrackGroup;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5}, [Landroidx/media3/common/Format;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v6, v1, v4

    iget-boolean v6, p0, Landroidx/media3/exoplayer/source/V;->W:Z

    iget-boolean v5, v5, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Landroidx/media3/exoplayer/source/V;->W:Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_a
    new-instance v0, LK1/c;

    new-instance v2, Landroidx/media3/exoplayer/source/t0;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/source/t0;-><init>([Landroidx/media3/common/TrackGroup;)V

    invoke-direct {v0, v2, v3}, LK1/c;-><init>(Landroidx/media3/exoplayer/source/t0;[Z)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->O:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->R:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_b

    iput-wide v7, p0, Landroidx/media3/exoplayer/source/V;->R:J

    new-instance v0, Landroidx/media3/exoplayer/source/Q;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/Q;-><init>(Landroidx/media3/exoplayer/source/V;LI0/F;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    :cond_b
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->R:J

    iget-object v2, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    invoke-interface {v2}, LI0/F;->d()Z

    move-result v2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/V;->S:Z

    iget-object v4, p0, Landroidx/media3/exoplayer/source/V;->v:Landroidx/media3/exoplayer/source/Y;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroidx/media3/exoplayer/source/Y;->v(JZZ)V

    iput-boolean v9, p0, Landroidx/media3/exoplayer/source/V;->M:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->H:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/B;->onPrepared(Landroidx/media3/exoplayer/source/C;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final w(I)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    iget-object v1, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast v1, [Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/t0;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    iget-object v0, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    iget-wide v8, p0, Landroidx/media3/exoplayer/source/V;->Z:J

    iget-object v3, p0, Landroidx/media3/exoplayer/source/V;->t:LA/d;

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, LA/d;->g(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final x(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->P:LK1/c;

    iget-object v0, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, [Z

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->b0:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/e0;->isReady(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/V;->a0:J

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->b0:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/V;->V:Z

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/V;->Z:J

    iput v0, p0, Landroidx/media3/exoplayer/source/V;->c0:I

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->H:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final y(Landroidx/media3/exoplayer/source/U;)LI0/L;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/V;->K:[Landroidx/media3/exoplayer/source/U;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/U;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/V;->L:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor added new track (id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroidx/media3/exoplayer/source/U;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, LI0/o;

    invoke-direct {p1}, LI0/o;-><init>()V

    return-object p1

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/V;->r:Lu0/q;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/V;->u:Lu0/m;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/V;->w:LE0/b;

    invoke-static {v3, v1, v2}, Landroidx/media3/exoplayer/source/e0;->createWithDrm(LE0/b;Lu0/q;Lu0/m;)Landroidx/media3/exoplayer/source/e0;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/source/e0;->setUpstreamFormatChangeListener(Landroidx/media3/exoplayer/source/d0;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/source/V;->K:[Landroidx/media3/exoplayer/source/U;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/exoplayer/source/U;

    aput-object p1, v2, v0

    sget p1, Lk0/C;->a:I

    iput-object v2, p0, Landroidx/media3/exoplayer/source/V;->K:[Landroidx/media3/exoplayer/source/U;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/exoplayer/source/e0;

    aput-object v1, p1, v0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    return-object v1
.end method

.method public final z(LI0/F;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/V;->I:LV0/b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, LI0/v;

    invoke-direct {v0, v1, v2}, LI0/v;-><init>(J)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/source/V;->Q:LI0/F;

    invoke-interface {p1}, LI0/F;->j()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/V;->R:J

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->Y:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, LI0/F;->j()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->S:Z

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    :cond_2
    iput v3, p0, Landroidx/media3/exoplayer/source/V;->T:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/V;->M:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/V;->R:J

    invoke-interface {p1}, LI0/F;->d()Z

    move-result p1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/V;->S:Z

    iget-object v3, p0, Landroidx/media3/exoplayer/source/V;->v:Landroidx/media3/exoplayer/source/Y;

    invoke-virtual {v3, v0, v1, p1, v2}, Landroidx/media3/exoplayer/source/Y;->v(JZZ)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/V;->v()V

    return-void
.end method
