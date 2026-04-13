.class public final Lk/d1;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LN1/d;LN1/d;LN1/d;LN1/d;LK1/o;LK1/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le4/c;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Le4/c;-><init>(ILjava/lang/Object;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Le2/d;->a(ILe2/a;)LJ/l;

    move-result-object v0

    iput-object v0, p0, Lk/d1;->g:Ljava/lang/Object;

    iput-object p1, p0, Lk/d1;->a:Ljava/lang/Object;

    iput-object p2, p0, Lk/d1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lk/d1;->c:Ljava/lang/Object;

    iput-object p4, p0, Lk/d1;->d:Ljava/lang/Object;

    iput-object p5, p0, Lk/d1;->e:Ljava/lang/Object;

    iput-object p6, p0, Lk/d1;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lk/d1;->d:Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lk/d1;->e:Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lk/d1;->f:Ljava/lang/Object;

    new-array v1, v1, [I

    iput-object v1, p0, Lk/d1;->g:Ljava/lang/Object;

    iput-object p1, p0, Lk/d1;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lk/d1;->b:Ljava/lang/Object;

    const v2, 0x7f0b0299

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lk/d1;->c:Ljava/lang/Object;

    const-class v1, Lk/d1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p1, 0x3ea

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f140004

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p1, 0x18

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method
