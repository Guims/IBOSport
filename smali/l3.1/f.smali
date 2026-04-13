.class public final Ll3/f;
.super Lh3/f;


# instance fields
.field public final q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lh3/k;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lh3/f;-><init>(Lh3/k;)V

    iput-object p2, p0, Ll3/f;->q:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Ll3/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lh3/f;-><init>(Lh3/f;)V

    iget-object p1, p1, Ll3/f;->q:Landroid/graphics/RectF;

    iput-object p1, p0, Ll3/f;->q:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Ll3/g;

    invoke-direct {v0, p0}, Lh3/g;-><init>(Lh3/f;)V

    iput-object p0, v0, Ll3/g;->M:Ll3/f;

    invoke-virtual {v0}, Lh3/g;->invalidateSelf()V

    return-object v0
.end method
