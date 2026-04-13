.class public final synthetic LG0/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LA/j;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:J


# direct methods
.method public synthetic constructor <init>(LA/j;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/G;->b:LA/j;

    iput-object p2, p0, LG0/G;->q:Ljava/lang/Object;

    iput-wide p3, p0, LG0/G;->r:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LG0/G;->b:LA/j;

    iget-object v0, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v1, Lk0/C;->a:I

    iget-object v1, p0, LG0/G;->q:Ljava/lang/Object;

    iget-wide v2, p0, LG0/G;->r:J

    invoke-interface {v0, v1, v2, v3}, LG0/I;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    return-void
.end method
