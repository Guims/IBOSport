.class public final Lpl/droidsonroids/gif/b;
.super Lpl/droidsonroids/gif/f;


# instance fields
.field public final synthetic q:I

.field public final synthetic r:Lpl/droidsonroids/gif/c;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/c;Lpl/droidsonroids/gif/c;I)V
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/gif/b;->r:Lpl/droidsonroids/gif/c;

    iput p3, p0, Lpl/droidsonroids/gif/b;->q:I

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/f;-><init>(Lpl/droidsonroids/gif/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lpl/droidsonroids/gif/b;->r:Lpl/droidsonroids/gif/c;

    iget-object v1, v0, Lpl/droidsonroids/gif/c;->v:Lpl/droidsonroids/gif/GifInfoHandle;

    iget v2, p0, Lpl/droidsonroids/gif/b;->q:I

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->q(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lpl/droidsonroids/gif/f;->b:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->B:LR5/f;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method
