.class public final Lf/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/view/ContextThemeWrapper;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/view/View;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/CharSequence;

.field public h:Landroid/content/DialogInterface$OnClickListener;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Z

.field public l:Lj/n;

.field public m:Ljava/lang/Object;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Landroid/view/View;

.field public p:Z

.field public q:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf/b;->q:I

    iput-object p1, p0, Lf/b;->a:Landroid/view/ContextThemeWrapper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/b;->k:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lf/b;->b:Landroid/view/LayoutInflater;

    return-void
.end method
