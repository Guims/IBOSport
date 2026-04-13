.class public final synthetic Landroidx/media3/exoplayer/source/I;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/h;


# instance fields
.field public final synthetic b:LA/d;

.field public final synthetic q:Landroidx/media3/exoplayer/source/v;

.field public final synthetic r:Landroidx/media3/exoplayer/source/A;

.field public final synthetic s:Ljava/io/IOException;

.field public final synthetic t:Z


# direct methods
.method public synthetic constructor <init>(LA/d;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/I;->b:LA/d;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/I;->q:Landroidx/media3/exoplayer/source/v;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/I;->r:Landroidx/media3/exoplayer/source/A;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/I;->s:Ljava/io/IOException;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/source/I;->t:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/K;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/I;->b:LA/d;

    iget v1, p1, LA/d;->q:I

    iget-object p1, p1, LA/d;->r:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/source/E;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/I;->q:Landroidx/media3/exoplayer/source/v;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/I;->r:Landroidx/media3/exoplayer/source/A;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/I;->s:Ljava/io/IOException;

    iget-boolean v6, p0, Landroidx/media3/exoplayer/source/I;->t:Z

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/source/K;->onLoadError(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V

    return-void
.end method
