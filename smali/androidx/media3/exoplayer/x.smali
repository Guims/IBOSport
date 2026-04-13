.class public final synthetic Landroidx/media3/exoplayer/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public final synthetic q:I

.field public final synthetic r:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/x;->b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput p2, p0, Landroidx/media3/exoplayer/x;->q:I

    iput-boolean p3, p0, Landroidx/media3/exoplayer/x;->r:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/x;->q:I

    iget-boolean v1, p0, Landroidx/media3/exoplayer/x;->r:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/x;->b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b(Landroidx/media3/exoplayer/ExoPlayerImplInternal;IZ)V

    return-void
.end method
