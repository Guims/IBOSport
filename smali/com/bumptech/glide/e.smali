.class public final Lcom/bumptech/glide/e;
.super Landroid/content/ContextWrapper;


# static fields
.field public static final k:Lcom/bumptech/glide/a;


# instance fields
.field public final a:LL1/g;

.field public final b:LK1/n;

.field public final c:Lu2/j;

.field public final d:Lx2/f;

.field public final e:Ljava/util/List;

.field public final f:Ln/e;

.field public final g:LK1/o;

.field public final h:Lcom/bumptech/glide/f;

.field public final i:I

.field public j:LZ1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lb2/b;->a:Lb2/a;

    iput-object v1, v0, Lcom/bumptech/glide/a;->b:Lb2/a;

    sput-object v0, Lcom/bumptech/glide/e;->k:Lcom/bumptech/glide/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LL1/g;Lcom/bumptech/glide/manager/r;Lu2/j;Lx2/f;Ln/e;Ljava/util/List;LK1/o;Lcom/bumptech/glide/f;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/e;->a:LL1/g;

    iput-object p4, p0, Lcom/bumptech/glide/e;->c:Lu2/j;

    iput-object p5, p0, Lcom/bumptech/glide/e;->d:Lx2/f;

    iput-object p7, p0, Lcom/bumptech/glide/e;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/e;->f:Ln/e;

    iput-object p8, p0, Lcom/bumptech/glide/e;->g:LK1/o;

    iput-object p9, p0, Lcom/bumptech/glide/e;->h:Lcom/bumptech/glide/f;

    const/4 p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/e;->i:I

    new-instance p1, LK1/n;

    invoke-direct {p1, p3}, LK1/n;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/e;->b:LK1/n;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/i;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/e;->b:LK1/n;

    invoke-virtual {v0}, LK1/n;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    return-object v0
.end method
