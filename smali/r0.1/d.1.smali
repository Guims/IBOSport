.class public final Lr0/d;
.super Landroid/database/ContentObserver;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Landroid/net/Uri;

.field public final synthetic c:Lr0/e;


# direct methods
.method public constructor <init>(Lr0/e;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lr0/d;->c:Lr0/e;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lr0/d;->a:Landroid/content/ContentResolver;

    iput-object p4, p0, Lr0/d;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lr0/d;->c:Lr0/e;

    iget-object v0, p1, Lr0/e;->a:Landroid/content/Context;

    iget-object v1, p1, Lr0/e;->i:Landroidx/media3/common/AudioAttributes;

    iget-object v2, p1, Lr0/e;->h:Lcom/bumptech/glide/f;

    invoke-static {v0, v1, v2}, Lr0/b;->c(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/e;->a(Lr0/b;)V

    return-void
.end method
