.class public final synthetic Landroidx/media3/exoplayer/p;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/n;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/p;->b:I

    iput p2, p0, Landroidx/media3/exoplayer/p;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/p;->q:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget v1, p0, Landroidx/media3/exoplayer/p;->b:I

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o(IILandroidx/media3/common/Player$Listener;)V

    return-void
.end method
