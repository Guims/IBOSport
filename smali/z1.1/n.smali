.class public final Lz1/n;
.super Lz1/m;


# instance fields
.field public final synthetic a:Ln/e;

.field public final synthetic b:Lz1/o;


# direct methods
.method public constructor <init>(Lz1/o;Ln/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/n;->b:Lz1/o;

    iput-object p2, p0, Lz1/n;->a:Ln/e;

    return-void
.end method


# virtual methods
.method public final c(Lz1/l;)V
    .locals 3

    iget-object v0, p0, Lz1/n;->b:Lz1/o;

    iget-object v0, v0, Lz1/o;->q:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lz1/n;->a:Ln/e;

    invoke-virtual {v2, v0, v1}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lz1/l;->w(Lz1/j;)Lz1/l;

    return-void
.end method
