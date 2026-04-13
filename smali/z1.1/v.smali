.class public abstract Lz1/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lz1/B;

.field public static final b:Landroidx/leanback/widget/y;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lz1/C;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/v;->a:Lz1/B;

    goto :goto_0

    :cond_0
    new-instance v0, Lz1/B;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/v;->a:Lz1/B;

    :goto_0
    new-instance v0, Landroidx/leanback/widget/y;

    const-string v1, "translationAlpha"

    const/16 v2, 0x9

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v3, v1, v2}, Landroidx/leanback/widget/y;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lz1/v;->b:Landroidx/leanback/widget/y;

    new-instance v0, Landroidx/leanback/widget/y;

    const-string v1, "clipBounds"

    const/16 v2, 0xa

    const-class v3, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v1, v2}, Landroidx/leanback/widget/y;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Lz1/v;->a:Lz1/B;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lz1/B;->s(Landroid/view/View;IIII)V

    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Lz1/v;->a:Lz1/B;

    invoke-virtual {v0, p0, p1}, Lz1/B;->p(Landroid/view/View;I)V

    return-void
.end method
