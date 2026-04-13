.class public final Landroidx/media3/exoplayer/source/X;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/D;


# instance fields
.field public final a:Landroidx/media3/datasource/DataSource$Factory;

.field public final b:LA3/d;

.field public c:Lu0/r;

.field public final d:LE0/j;

.field public final e:I


# direct methods
.method public constructor <init>(LI0/t;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 2

    new-instance v0, LA3/d;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1}, LA3/d;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lu0/h;

    invoke-direct {p1}, Lu0/h;-><init>()V

    new-instance v1, LE0/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/X;->a:Landroidx/media3/datasource/DataSource$Factory;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/X;->b:LA3/d;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/X;->c:Lu0/r;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/X;->d:LE0/j;

    const/high16 p1, 0x100000

    iput p1, p0, Landroidx/media3/exoplayer/source/X;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lu0/r;)Landroidx/media3/exoplayer/source/D;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lk0/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/X;->c:Lu0/r;

    return-object p0
.end method

.method public final c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/G;
    .locals 9

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/source/Y;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/X;->c:Lu0/r;

    check-cast v0, Lu0/h;

    invoke-virtual {v0, p1}, Lu0/h;->b(Landroidx/media3/common/MediaItem;)Lu0/q;

    move-result-object v5

    iget v7, p0, Landroidx/media3/exoplayer/source/X;->e:I

    const/4 v8, 0x0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/X;->a:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/X;->b:LA3/d;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/X;->d:LE0/j;

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/source/Y;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;LA3/d;Lu0/q;LE0/m;IZ)V

    return-object v1
.end method
