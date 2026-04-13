.class public final Ls4/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Ls4/i;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ls4/j;


# direct methods
.method public constructor <init>(Ls4/j;Ls4/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/h;->r:Ls4/j;

    iput-object p2, p0, Ls4/h;->b:Ls4/i;

    iput-object p3, p0, Ls4/h;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 10

    iget-object v0, p0, Ls4/h;->b:Ls4/i;

    iget-object v1, v0, Ls4/i;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v0, Ls4/i;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Ls4/i;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ls4/h;->r:Ls4/j;

    iget-object v2, v1, Ls4/j;->d:Landroid/content/Context;

    iget-object v3, v0, Ls4/i;->x:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v0, v0, Ls4/i;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    const/16 v9, 0xc

    iget-object v4, p0, Ls4/h;->q:Ljava/lang/String;

    const v5, 0x7f0800cc

    const v6, 0x7f0800cc

    invoke-static/range {v2 .. v9}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
