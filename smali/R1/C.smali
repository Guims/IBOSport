.class public final LR1/C;
.super Ljava/lang/Object;

# interfaces
.implements LK1/D;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LR1/C;->b:I

    iput-object p2, p0, LR1/C;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LR1/C;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LR1/C;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LR1/C;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LR1/C;->q:Ljava/lang/Object;

    return-void
.end method

.method private final d()V
    .locals 0

    return-void
.end method

.method private final e()V
    .locals 0

    return-void
.end method

.method private final f()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, LR1/C;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v0}, LR1/c;->m(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v0}, LR1/c;->q(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 2

    iget v0, p0, LR1/C;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v0}, LR1/c;->b(Landroid/graphics/drawable/AnimatedImageDrawable;)I

    move-result v0

    iget-object v1, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v1}, LR1/c;->p(Landroid/graphics/drawable/AnimatedImageDrawable;)I

    move-result v1

    mul-int/2addr v1, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0}, Ld2/n;->d(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_1
    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    return v0

    :pswitch_2
    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Ld2/n;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    iget v0, p0, LR1/C;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    :pswitch_1
    const-class v0, [B

    return-object v0

    :pswitch_2
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LR1/C;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    return-object v0

    :pswitch_1
    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    :pswitch_2
    iget-object v0, p0, LR1/C;->q:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
