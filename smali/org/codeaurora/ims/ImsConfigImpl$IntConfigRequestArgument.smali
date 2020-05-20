.class final Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntConfigRequestArgument"
.end annotation


# instance fields
.field public item:I

.field public value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->item:I

    .line 206
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->value:I

    .line 207
    return-void
.end method
