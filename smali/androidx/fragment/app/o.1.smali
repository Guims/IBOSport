.class public final Landroidx/fragment/app/o;
.super Landroidx/fragment/app/s;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/t;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/t;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/t;

    iget-object v1, v0, Landroidx/fragment/app/t;->e0:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/r;->h()V

    invoke-static {v0}, Landroidx/lifecycle/G;->a(Lw1/d;)V

    return-void
.end method
