.class Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;
.super Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ByteValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field private value:B


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 1

    .line 119
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 121
    iput-byte v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    .line 122
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 117
    return-void
.end method


# virtual methods
.method public get(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    .line 135
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->padSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    return-void
.end method

.method public getValue()B
    .locals 1

    .line 139
    iget-byte v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    return v0
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 126
    iget-byte v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->padSize:I

    if-ge v1, v2, :cond_0

    .line 128
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public setValue(B)V
    .locals 0

    .line 143
    iput-byte p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteValue value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
