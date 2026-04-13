.class public final LV1/d;
.super Ljava/lang/Object;

# interfaces
.implements La2/c;


# instance fields
.field public final b:I

.field public final q:I

.field public r:LZ1/c;

.field public final s:Landroid/os/Handler;

.field public final t:I

.field public final u:J

.field public v:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    invoke-static {v0, v0}, Ld2/n;->i(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, LV1/d;->b:I

    iput v0, p0, LV1/d;->q:I

    iput-object p1, p0, LV1/d;->s:Landroid/os/Handler;

    iput p2, p0, LV1/d;->t:I

    iput-wide p3, p0, LV1/d;->u:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(LZ1/c;)V
    .locals 0

    iput-object p1, p0, LV1/d;->r:LZ1/c;

    return-void
.end method

.method public final b(LZ1/f;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, LV1/d;->v:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iget-object v0, p0, LV1/d;->s:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-wide v1, p0, LV1/d;->u:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g(LZ1/f;)V
    .locals 2

    iget v0, p0, LV1/d;->b:I

    iget v1, p0, LV1/d;->q:I

    invoke-virtual {p1, v0, v1}, LZ1/f;->l(II)V

    return-void
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final i()LZ1/c;
    .locals 1

    iget-object v0, p0, LV1/d;->r:LZ1/c;

    return-object v0
.end method

.method public final j(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LV1/d;->v:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method
