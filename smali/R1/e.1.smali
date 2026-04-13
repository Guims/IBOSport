.class public final LR1/e;
.super Ljava/lang/Object;

# interfaces
.implements LK1/D;
.implements LK1/z;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LL1/b;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LR1/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p2, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LR1/e;->q:Ljava/lang/Object;

    const-string p2, "BitmapPool must not be null"

    invoke-static {p1, p2}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LR1/e;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;LK1/D;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LR1/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LR1/e;->q:Ljava/lang/Object;

    invoke-static {p2, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LR1/e;->r:Ljava/lang/Object;

    return-void
.end method

.method public static d(LL1/b;Landroid/graphics/Bitmap;)LR1/e;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, LR1/e;

    invoke-direct {v0, p0, p1}, LR1/e;-><init>(LL1/b;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, LR1/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR1/e;->r:Ljava/lang/Object;

    check-cast v0, LK1/D;

    invoke-interface {v0}, LK1/D;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, LR1/e;->r:Ljava/lang/Object;

    check-cast v0, LL1/b;

    iget-object v1, p0, LR1/e;->q:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, LL1/b;->b(Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, LR1/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR1/e;->r:Ljava/lang/Object;

    check-cast v0, LK1/D;

    invoke-interface {v0}, LK1/D;->b()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, LR1/e;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Ld2/n;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    iget v0, p0, LR1/e;->b:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0

    :pswitch_0
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LR1/e;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, LR1/e;->q:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v2, p0, LR1/e;->r:Ljava/lang/Object;

    check-cast v2, LK1/D;

    invoke-interface {v2}, LK1/D;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, LR1/e;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final initialize()V
    .locals 2

    iget v0, p0, LR1/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR1/e;->r:Ljava/lang/Object;

    check-cast v0, LK1/D;

    instance-of v1, v0, LK1/z;

    if-eqz v1, :cond_0

    check-cast v0, LK1/z;

    invoke-interface {v0}, LK1/z;->initialize()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LR1/e;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
