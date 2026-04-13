.class public final Lw2/i;
.super Ljava/lang/Object;

# interfaces
.implements Lw2/b;


# instance fields
.field public final synthetic a:Lw2/d;


# direct methods
.method public constructor <init>(Lw2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/i;->a:Lw2/d;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lw2/i;->a:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
