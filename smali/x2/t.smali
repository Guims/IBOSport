.class public final Lx2/t;
.super Lx2/l;


# instance fields
.field public final synthetic g:Lcom/google/android/gms/common/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/a;I)V
    .locals 1

    iput-object p1, p0, Lx2/t;->g:Lcom/google/android/gms/common/internal/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lx2/l;-><init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(Lu2/a;)V
    .locals 1

    iget-object v0, p0, Lx2/t;->g:Lcom/google/android/gms/common/internal/a;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/a;->i:LE1/E;

    invoke-virtual {v0, p1}, LE1/E;->c(Lu2/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lx2/t;->g:Lcom/google/android/gms/common/internal/a;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/a;->i:LE1/E;

    sget-object v1, Lu2/a;->t:Lu2/a;

    invoke-virtual {v0, v1}, LE1/E;->c(Lu2/a;)V

    const/4 v0, 0x1

    return v0
.end method
