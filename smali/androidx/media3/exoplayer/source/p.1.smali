.class public final Landroidx/media3/exoplayer/source/p;
.super Ljava/lang/Object;


# instance fields
.field public final a:LI0/t;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public d:Landroidx/media3/datasource/DataSource$Factory;

.field public e:Z

.field public f:Lx2/f;

.field public g:Lu0/r;


# direct methods
.method public constructor <init>(LI0/t;Lx2/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->a:LI0/t;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/p;->f:Lx2/f;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->c:Ljava/util/HashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/p;->e:Z

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/media3/exoplayer/source/D;
    .locals 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/p;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/D;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/p;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/h;

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->d:Landroidx/media3/datasource/DataSource$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Landroidx/media3/exoplayer/source/D;

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    new-instance v3, Landroidx/media3/common/g;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4, v0}, Landroidx/media3/common/g;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    move-object v0, v3

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized contentType: "

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Landroidx/media3/exoplayer/source/o;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/source/o;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    const-class v5, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-instance v5, Landroidx/media3/exoplayer/source/n;

    invoke-direct {v5, v3, v0, v4}, Landroidx/media3/exoplayer/source/n;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;I)V

    :goto_1
    move-object v0, v5

    goto :goto_2

    :cond_5
    const-string v5, "androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-instance v5, Landroidx/media3/exoplayer/source/n;

    invoke-direct {v5, v3, v0, v4}, Landroidx/media3/exoplayer/source/n;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;I)V

    goto :goto_1

    :cond_6
    const-class v4, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Landroidx/media3/exoplayer/source/n;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v0, v5}, Landroidx/media3/exoplayer/source/n;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;I)V

    move-object v0, v4

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-interface {v0}, Lo3/h;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/D;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/p;->g:Lu0/r;

    if-eqz v2, :cond_7

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/D;->a(Lu0/r;)Landroidx/media3/exoplayer/source/D;

    :cond_7
    iget-object v2, p0, Landroidx/media3/exoplayer/source/p;->f:Lx2/f;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/D;->b(Lx2/f;)V

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/p;->e:Z

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/D;->d(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
