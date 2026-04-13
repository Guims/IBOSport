.class public final Lf/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lf/d;

.field public final synthetic q:Lf/b;


# direct methods
.method public constructor <init>(Lf/b;Lf/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a;->q:Lf/b;

    iput-object p2, p0, Lf/a;->b:Lf/d;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lf/a;->q:Lf/b;

    iget-object p2, p1, Lf/b;->n:Landroid/content/DialogInterface$OnClickListener;

    iget-object p4, p0, Lf/a;->b:Lf/d;

    iget-object p5, p4, Lf/d;->b:Lf/f;

    invoke-interface {p2, p5, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-boolean p1, p1, Lf/b;->p:Z

    if-nez p1, :cond_0

    iget-object p1, p4, Lf/d;->b:Lf/f;

    invoke-virtual {p1}, Lf/f;->dismiss()V

    :cond_0
    return-void
.end method
