.class public final LO2/b;
.super Ljava/lang/Object;

# interfaces
.implements LJ/r;


# instance fields
.field public b:I

.field public final q:Landroid/view/View;

.field public r:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO2/b;->q:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LO2/b;->b:I

    iput-object p1, p0, LO2/b;->q:Landroid/view/View;

    iput p3, p0, LO2/b;->r:I

    return-void
.end method


# virtual methods
.method public f(Landroid/view/View;LJ/B0;)LJ/B0;
    .locals 4

    const/4 p1, 0x7

    iget-object v0, p2, LJ/B0;->a:LJ/y0;

    invoke-virtual {v0, p1}, LJ/y0;->f(I)LB/c;

    move-result-object p1

    iget p1, p1, LB/c;->b:I

    iget v0, p0, LO2/b;->b:I

    iget-object v1, p0, LO2/b;->q:Landroid/view/View;

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/2addr v0, p1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, p0, LO2/b;->r:I

    add-int/2addr v2, p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
