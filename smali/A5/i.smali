.class public final LA5/i;
.super LK5/d;


# instance fields
.field public final synthetic m:LA5/j;


# direct methods
.method public constructor <init>(LA5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA5/i;->m:LA5/j;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 1

    iget-object v0, p0, LA5/i;->m:LA5/j;

    invoke-virtual {v0}, LA5/j;->cancel()V

    return-void
.end method
