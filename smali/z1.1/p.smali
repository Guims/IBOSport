.class public abstract Lz1/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lz1/a;

.field public static final b:Ljava/lang/ThreadLocal;

.field public static final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz1/a;

    invoke-direct {v0}, Lz1/l;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lz1/a;->P:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz1/a;->S:Z

    iput v1, v0, Lz1/a;->T:I

    iput-boolean v1, v0, Lz1/a;->Q:Z

    new-instance v1, Lz1/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lz1/g;-><init>(I)V

    invoke-virtual {v0, v1}, Lz1/a;->H(Lz1/l;)V

    new-instance v1, Lz1/e;

    invoke-direct {v1}, Lz1/l;-><init>()V

    invoke-virtual {v0, v1}, Lz1/a;->H(Lz1/l;)V

    new-instance v1, Lz1/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lz1/g;-><init>(I)V

    invoke-virtual {v0, v1}, Lz1/a;->H(Lz1/l;)V

    sput-object v0, Lz1/p;->a:Lz1/a;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lz1/p;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lz1/p;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/widget/FrameLayout;Lz1/l;)V
    .locals 5

    sget-object v0, Lz1/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    sget-object p1, Lz1/p;->a:Lz1/a;

    :cond_0
    invoke-virtual {p1}, Lz1/l;->i()Lz1/l;

    move-result-object p1

    invoke-static {}, Lz1/p;->b()Ln/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lz1/l;

    invoke-virtual {v4, p0}, Lz1/l;->v(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lz1/l;->g(Landroid/view/ViewGroup;Z)V

    const v0, 0x7f0b03c1

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lz1/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lz1/o;->b:Lz1/l;

    iput-object p0, v0, Lz1/o;->q:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public static b()Ln/e;
    .locals 3

    sget-object v0, Lz1/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/e;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ln/e;

    invoke-direct {v1}, Ln/j;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method
