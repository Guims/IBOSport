.class public final Lpl/droidsonroids/gif/a;
.super Lpl/droidsonroids/gif/f;


# instance fields
.field public final synthetic q:Lpl/droidsonroids/gif/c;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/c;Lpl/droidsonroids/gif/c;)V
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/gif/a;->q:Lpl/droidsonroids/gif/c;

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/f;-><init>(Lpl/droidsonroids/gif/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/a;->q:Lpl/droidsonroids/gif/c;

    iget-object v1, v0, Lpl/droidsonroids/gif/c;->v:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->start()V

    :cond_0
    return-void
.end method
